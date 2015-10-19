class ChannelsController < ApplicationController
  
  before_action :authenticate_user! 
	layout "jyaasa_tube"
  def index
  	@channels = Channel.all
  end

  def new
  	@channel = Channel.new
  end

  def create
  	@channel = Channel.new(set_db_field)
  	if @channel.save
  		flash[:notice] = "Channel Saved"
  		redirect_to new_channel_path
  	else
  		flash[:notice] = "Sorry Channel Could not saved"
  		render "new"
  	end
  end

  def edit
  end

  def destroy
  end

  private 
  def set_db_field
  	params.require(:channel).permit(:name, :status, :user_id)
  end

end
