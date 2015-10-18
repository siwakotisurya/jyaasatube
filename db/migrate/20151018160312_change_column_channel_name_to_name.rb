class ChangeColumnChannelNameToName < ActiveRecord::Migration
  def change
  	rename_column :channels, :channel_name, :name
  end
end
