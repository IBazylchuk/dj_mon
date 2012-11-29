class DjMon::ApplicationController < ApplicationController
  
  private 
  def authenticate_djmon_user
    if !djmon_user
      logger.debug "~~~~~~~~NO USER"
    end
  end
end