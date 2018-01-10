class AuthController < ApplicationController
  skip_before_action :authorized

  def show
    render json: {
      id: current_user.id,
      username: current_user.username,
      name: current_user.name
    }
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      payload = {user_id: @user.id}
      token = issue_token(payload)
      render json: { user: @user, token: token}
    else
      render json: { error: "your credentials are wrong"}
    end
  end

end
