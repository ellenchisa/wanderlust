class ApplicationController < ActionController::Base
  protect_from_forgery

  def isadmin
    @isadmin = false
    if session[:fbuser] == nil or session[:fbuser]['id'] != '1266930050' then
      redirect_to root_url
    else
      @isadmin = true
    end
  end

end