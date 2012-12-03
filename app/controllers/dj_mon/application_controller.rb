class DjMon::ApplicationController < ApplicationController
  helper_method :authenticate_djmon_user
  private 
  def authenticate_djmon_user
  	logger.debug "~~~~~~~~~~~~HELLO FROM DJ MON!!!"
    if !djmon_user
      logger.debug "~~~~~~~~NO USER"
    end
  end
end