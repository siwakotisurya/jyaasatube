class ChannelsController < ApplicationController
  
	layout "jyaasa_tube"
  def new
  	@channel = Channel.new
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
