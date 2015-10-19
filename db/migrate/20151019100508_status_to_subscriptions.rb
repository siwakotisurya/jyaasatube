class StatusToSubscriptions < ActiveRecord::Migration
  def change
  	add_column :subscriptions, :status, :string, :default=>"subscribe"
  end
end
