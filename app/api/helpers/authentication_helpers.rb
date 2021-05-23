module AuthenticationHelpers
  extend Grape::API::Helpers

  def authenticate!
    error!({ message: "Unauthorized. Invalid or expired token.", status_code: false }, 401) unless current_user
  end

  def current_user
    # find token. Check if valid.
    token = UserToken.where(access_token: params[:token]).first
    if token && !token.expired?
      @current_user = User.find(token.user_id)
    else
      false
    end
  end
end