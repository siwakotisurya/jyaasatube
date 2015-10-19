class JyaasaTubesController < ApplicationController
  
  layout "jyaasa_tube"
  def index
  	@videos = Video.all
  	@channels = Channel.all
  end
end
