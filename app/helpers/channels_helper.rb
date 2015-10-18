module ChannelsHelper

	def form_error
		if @channel.errors.any?
			@channel.errors.full_messages.each do |s|
				'<div class="alert alert-danger">
	  			<strong>#{s}</strong>
				</div>'.html_safe 
			end
		end
	end
		
	def flash_show
		if flash[:notice]
			show = '<div class="alert alert-danger">
	  			<strong>'+flash[:notice]+'</strong>
				</div>'
				show.html_safe
		end
	end

end
