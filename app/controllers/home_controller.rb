# home_controller
class HomeController < ApplicationController
  def index
    if user_signed_in?
      if current_user.try(:admin?)
        redirect_to 'gobernador/inicio'
      else
        redirect_to :root
      end
    end
  end
end
