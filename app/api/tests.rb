class Tests < Api
  format :json
  default_format :json

  helpers do
    def test_params
      @permitted_params ||= declared(params, include_missing: false, include_parent_namespaces: false)
    end
  end

  namespace :tests, desc: "Bags related CRUD operations" do
    desc "A test end-point"
    get "/test_endpoint/:id" do
      { message: "Hello, I am testing end-point - #{params[:id]}", status_code: true, message2: "heyyyyyyy, you learnt to work on the api priya" }
    end

    desc "post request"
    post "/post_endpoint" do
      { message: "Hello, I am testing post end-point - #{params[:name]}, #{params[:email]}", status_code: true }
    end
  end
end
