class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_cache_buster

  def set_cache_buster
    response.headers['Cache-Control'] = 'no-cache, no-store, max-age=0, must-revalidate'
    response.headers['Pragma'] = 'no-cache'
    response.headers['Expires'] = 'Fri, 01 Jan 1990 00:00:00 GMT'
  end

  def after_sign_in_path_for(resource)
    if false
      if current_user.try(:admin?)
        governor_home_path
      else
        redirect_to :root
      end
    end
  end

  protected

  def authenticate_admin!
    unless user_signed_in? and current_user.try(:admin?)
      flash[:danger] = 'No tienes autorización para entrar en esa sección'
      redirect_to :root
    end
  end
end
