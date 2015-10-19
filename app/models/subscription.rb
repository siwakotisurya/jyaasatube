class Subscription < ActiveRecord::Base
	belongs_to :user
	belongs_to :channel

	def add(user, channel, subscription)
		subscription.user_id = user.id
		subscription.channel_id = channel.id
	end

end
