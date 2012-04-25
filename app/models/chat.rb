class Chat < ActiveRecord::Base
  belongs_to :channel
  
  attr_accessible :channel_id, :username, :message
  
  MAX_LOGGING = 10
end