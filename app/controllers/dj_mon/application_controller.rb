class DjMon::ApplicationController < ApplicationController
  helper_method :authenticate_djmon_user
  private 
  def authenticate_djmon_user
  	logger.debug "~~~~~~~~~~~~HELLO FROM DJ MON!!!"
    if !djmon_user && !djmon_user.admin?
      logger.debug "~~~~~~~~NO USER"
      session["user_return_to"] = request.fullpath
      flash.alert = 'Admin not signed in'
      login_path = (mail_app.respond_to(:sign_in_path) && main_app.send(:sign_in_path))
      if login_path
      	redirect_to login_path
      end
    end
  end
end