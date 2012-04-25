class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def no_session
    redirect_to root_url unless session[:username] && session[:channel]
  end
end
