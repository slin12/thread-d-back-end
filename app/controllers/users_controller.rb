class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  def create
    user = User.new(user_params)
    if user.valid?
      render json: user
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
