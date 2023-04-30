class ApplicationController < ActionController::Base
  helper_method :signed_in?, :current_user, :admin?

  def current_user
    return unless session[:user_id]

    @user = User.find(session[:user_id])
  end

  def signed_in?
    !!current_user
  end

  def admin?
    return unless signed_in?

    current_user.has_admin_perms?
  end

  def authorized?
    redirect_to sign_in_path unless signed_in?
  end
end
