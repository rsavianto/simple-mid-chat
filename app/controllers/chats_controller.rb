require 'pusher'

Pusher.app_id = '19198'
Pusher.key = '768124b90277f5c9ca27'
Pusher.secret = '91b827b86d2101f56ee3'

class ChatsController < ApplicationController
  before_filter :no_session, :get_channel
  
  def index
    @chats = @channel.chats.last(Chat::MAX_LOGGING)
  end
  
  def create
    message = params[:message]
    Pusher[@channel.name].trigger('chatting', {:message => message, :username => @username})
    #Logging
    Chat.create(:channel_id => @channel.id, :username => @username, :message => message)
    head(:ok)
  end
  
private
  def get_channel
    @channel  = Channel.find(session[:channel])
    @username = session[:username]
  end  
end