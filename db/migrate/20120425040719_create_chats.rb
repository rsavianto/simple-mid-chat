class CreateChats < ActiveRecord::Migration
  def up
    create_table :chats do |t|
      t.integer   :channel_id
      t.string    :username
      t.text      :message
      t.timestamp
    end
  end

  def down
    drop_table :chats
  end
end
