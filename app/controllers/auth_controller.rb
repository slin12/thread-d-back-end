class AuthController < ApplicationController
  skip_before_action :authorized

  # def show
  #   render json: {
  #     id: current_user.id,
  #     name: current_user.name
  #   }
  # end

  def new
    if current_user
      render json: current_user
    else
      render json: {error: 'not authenticated'}
    end
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      payload = {user_id: @user.id}
      token = issue_token(payload)
      render json: { user: {name: @user.name, patterns: @user.patterns, colors: @user.colors}, token: token}
    else
      render json: { error: "your credentials are wrong"}
    end
  end

end
