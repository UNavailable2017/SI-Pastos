class ApplicationController < ActionController::Base
  include Pundit
  before_action :set_cache_buster
  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

 private

   def user_not_authorized
     flash[:notice] = "You are not authorized to perform this action."
     redirect_to(request.referrer || root_path)
   end
   def set_cache_buster
     response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
     response.headers["Pragma"] = "no-cache"
     response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
   end

end
