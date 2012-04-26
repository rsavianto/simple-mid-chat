class SessionsController < ApplicationController
  
  def create
    session[:username] = params[:username]
    session[:channel]  = params[:channel]

    redirect_to chats_url
  end
  
  def destroy
    session[:username] = session[:channel] = nil

    redirect_to root_url
  end
end