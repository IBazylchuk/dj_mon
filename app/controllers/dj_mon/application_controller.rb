class DjMon::ApplicationController < ApplicationController
  
  private 
  def authenticate_djmon_user
  	logger.debug "~~~~~~~~~~~~HELLO FROM DJ MON!!!"
    if !djmon_user
      logger.debug "~~~~~~~~NO USER"
    end
  end
end