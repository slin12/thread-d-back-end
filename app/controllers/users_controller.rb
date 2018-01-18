class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]
  def create
    user = User.create(user_params)
    if user.valid?
      payload = {user_id: user.id}
      token = issue_token(payload)
      render json: {user: {name: user.name, patterns: user.patterns, colors: user.colors}, token: token}
    else
      render json: {error: user.errors.full_messages}
    end
  end

  def update_color
    colors = current_user.colors.select {|color| color.join("") != params[:colors].join("")}
    current_user.colors = colors
    current_user.save
    render json: current_user
  end

  def create_color
    current_user.colors.push(params[:colors])
    current_user.save
    render json: current_user
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
