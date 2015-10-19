class SubscriptionsController < ApplicationController
  def create
  	user = User.find(params[:user_id])
  	channel = Channel.find_by_name(params[:channel_name])
  	subscription_check = Subscription.where("channel_id = ?",channel.id).where("user_id = ?",user.id)
  	if subscription_check.empty?
  		subscription = channel.subscriptions.new
  		subscription.add(user, channel, subscription)
  		if subscription.save
  			redirect_to root_path
  			flash[:notice] = "sorry only one time subscription is possible"	
  		else
  			redirect_to root_path
  			flash[:notice] = "sorry only one time subscription is possible"
  		end
  	else
  		redirect_to root_path
  		flash[:notice] = "sorry only one time subscription is possible"
  	end
	end
end
