# home_controller
class HomeController < ApplicationController
  def index
    if false
      if current_user.try(:admin?)
        governor_home_path
      else
        redirect_to :root
      end
    end
  end
end
