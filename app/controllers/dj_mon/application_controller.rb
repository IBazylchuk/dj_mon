class DjMon::ApplicationController < ApplicationController
  helper_method :authenticate_djmon_user
  private 
  def authenticate_djmon_user
  	logger.debug "~~~~~~~~~~~~HELLO FROM DJ MON!!!"
    if !djmon_user
      logger.debug "~~~~~~~~NO USER"
      session["user_return_to"] = request.fullpath
      flash.alert = 'Admin not signed in'
      login_path = (main_app.respond_to(:sign_in_path) && main_app.send(:sign_in_path))
      if login_path
      	redirect_to login_path
      end
    elsif !djmon_user.admin?
    	redirect_to main_app.send(:root_path)
    end
  end
end