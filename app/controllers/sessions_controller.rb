class SessionsController < ApplicationController
  def authenticate
    @user = User.find_by(username: params[:session][:login]) || User.find_by(email: params[:session][:login])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to sign_in_path
  end
end
