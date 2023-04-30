class UsersController < ApplicationController
  before_action :authorized?, only: [:show]
  def sign_up
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @user.save
      redirect_to root_path
    else
      redirect :new
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
