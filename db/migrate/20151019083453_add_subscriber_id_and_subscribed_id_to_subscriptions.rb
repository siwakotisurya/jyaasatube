class AddSubscriberIdAndSubscribedIdToSubscriptions < ActiveRecord::Migration
  def change
  	 create_table :subscriptions do |t|
      t.integer :subscribed_id
      t.integer :subscriber_id
    end
    add_index :subscriptions, [:subscriber_id, :subscribed_id], unique: true
  end
end
