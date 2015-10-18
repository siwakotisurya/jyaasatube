class Channel < ActiveRecord::Base
	
	validates :channel_name, :presence=>"true"

	belongs_to :user

end
