class Users < Api
  format :json
  default_format :json

  helpers do
    def test_params
      @permitted_params ||= declared(params, include_missing: false, include_parent_namespaces: false)
    end
  end

  namespace :users, desc: "Bags related CRUD operations" do
    desc "Users listing"
    get "/" do
      @users = User.all
      if @users
        { data: @users, status_code: true }
      else
        { message: " No record found", status_code: false }
      end
    end

    desc "User registration API"
    params do
      requires :username, type: String, desc: "Name", documentation: { param_type: "body" }
      requires :email, type: String, desc: "Email Address", documentation: { param_type: "body" }
      requires :password, type: String, desc: "Password", documentation: { param_type: "body" }
    end

    post "/" do
      user = User.find_by(username: params[:username])
      if !user.present?
        user = User.new(params)
        if user.save
          { status: true, user: user.as_json(except: [:created_at, :updated_at]), message: "Registration successful" }
        else
          error!({ status: false, message: user.errors.full_messages.join(", ") }, 400)
        end
      else
        error!({ status: false, message: "User already existed" }, 400)
      end
    end

    desc "User Login API"
    params do
      requires :username, type: String, desc: "Username", documentation: { param_type: "body" }
      requires :password, type: String, desc: "Password", documentation: { param_type: "body" }
    end

    post "/login" do
      user = User.find_by(username: params[:username])
      if user.present?
        if user.valid_password?(params[:password])
          key = UserToken.create(user_id: user.id)
          { status: true, user: user.user_data(key.access_token), message: "Login successful" }
        else
          error!({ status: false, message: "Email and password do not match" }, 400)
        end
      else
        error!({ status: false, message: "User doesn't exist" }, 400)
      end
    end

    desc "User update endpoint"
    put "/:id" do
      @user = User.find_by(id: params[:id])
      if @user && @user.update(params)
        { message: "user updated successfully", user: @user, status_code: true }
      else
        { message: "something went wrong", status_code: false }
      end
    end

    desc "User dashboard"

    get "/dashboard" do
      authenticate!
      { status: true, data: @current_user, message: "Dashboard" }
    end
  end
end
