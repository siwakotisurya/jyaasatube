class ChangeColumnChannelIdToChannelName < ActiveRecord::Migration
  def change
  	rename_column :videos, :channel_id, :channel_name
  end
end
