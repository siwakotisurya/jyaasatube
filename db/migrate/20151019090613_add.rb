class Add < ActiveRecord::Migration
  def change
  	add_column :subscriptions, :user_id, :integer
  	add_column :subscriptions, :channel_id, :integer
  end
end
