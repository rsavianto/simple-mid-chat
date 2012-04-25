class Channel < ActiveRecord::Base
  has_many :chats 
  
  attr_accessible :name
end