class VideosController < ApplicationController
  
  before_action :authenticate_user! 
	layout "jyaasa_tube"
  def index
  	@videos = Video.all
  end

  def new
  	@channel = Channel.find_by_name(params[:channel_name])
  	@video = @channel.videos.new
  end

  def create
  	@channel = Channel.find_by_name(params[:channel_name])
  	@video = @channel.videos.new(set_db_field)
  	if @video.save
  	  render "new"
  	else
      render "new"
  	end
  end

  private def set_db_field
		params.require(:video).permit(:video)
	end
end
