class Channel < ActiveRecord::Base
	
	validates :name, :presence=>"true"
	has_many :videos
	belongs_to :user
	has_many :active_subscriptions, class_name: "subscriptions", foreign_key: "subscriber_id" 
end
