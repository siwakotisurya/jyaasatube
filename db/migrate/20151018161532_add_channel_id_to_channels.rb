class AddChannelIdToChannels < ActiveRecord::Migration
  def change
    add_column :channels, :channel_id, :integer
  end
end
