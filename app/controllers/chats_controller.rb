require 'pusher'

Pusher.app_id = '19198'
Pusher.key = '768124b90277f5c9ca27'
Pusher.secret = '91b827b86d2101f56ee3'

class ChatsController < ApplicationController
  def index
    puts "masuk sini"
    (1..10).each do |i|
      Pusher['my-channel'].trigger('my-event', {:message => "hello world #{i}"})
      #sleep(2000)
    end
  end
end