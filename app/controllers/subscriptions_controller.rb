class SubscriptionsController < ApplicationController
  def create
  	user = User.find(params[:user_id])
  	channel = Channel.find_by_name(params[:channel_name])
  	subscription_check = Subscription.where("channel_id = ?",channel.id).where("user_id = ?",user.id)
  	if subscription_check.empty?
  	subscription = channel.subscriptions.new
  	subscription.add(user, channel, subscription)
  	subscription.save
  	else
  	
  	end
  	 
  	
  end
end
