class ChannelsController < ApplicationController
  
	layout "jyaasa_tube"
  def new
  	@channel = Channel.new
  end

  def create
  	@channel = Channel.new(set_db_field)
  	if @channel.save
  		binding.pry
  	else
  		bidning.pry
  	end
  end

  def edit
  end

  def destroy
  end

  private 
  def set_db_field
  	params.require(:channel).permit(:channel_name, :status, :user_id)
  end

end
