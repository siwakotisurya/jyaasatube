class RemoveChannelIdColumnFromChannels < ActiveRecord::Migration
  def change
  	remove_column :channels, :channel_id, :integer
  end
end
