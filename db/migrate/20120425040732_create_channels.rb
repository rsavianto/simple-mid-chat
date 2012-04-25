class CreateChannels < ActiveRecord::Migration
  def up
    create_table :channels do |t|
      t.string  :name
      t.timestamp
    end
    for i in 1..5
      Chat.create(:name => "Channel#{i}")
    end
  end

  def down
    drop_table :channels
  end
end
