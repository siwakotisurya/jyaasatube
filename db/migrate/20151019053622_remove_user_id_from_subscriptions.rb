class RemoveUserIdFromSubscriptions < ActiveRecord::Migration
  def change
   	remove_column :subscriptions, :user_id, :integer
   	add_column :subscriptions, :subscriber_id, :integer
  end
end
