class SessionsController < ApplicationController
  
  def create
    session[:username] = params[:username]
    session[:channel]  = params[:channel]

    redirect_to chats_url
  end
end