class Subscriber < ActiveRecord::Base
	has_many :subscriptions
	has_many :channels, through: :subscriptions
end
