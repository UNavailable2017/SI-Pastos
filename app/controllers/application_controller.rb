# application_controller
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_current_user

  def set_current_user
    User.current = current_user
  end

  def user_not_auth
    redirect_to root_url unless current_user.admin?
  end
end
