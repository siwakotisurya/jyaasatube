class VideosController < ApplicationController
  
	layout "jyaasa_tube"
  def index
  end

  def new
  	@channel = Channel.find_by_name(params[:channel_name])
  	@video = @channel.videos.new
  end

  def create
  	
  end

  private def set_db_field
		params.require(:video).permit(:video)
	end
end
