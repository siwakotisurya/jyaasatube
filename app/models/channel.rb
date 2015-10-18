class Channel < ActiveRecord::Base
	
	validates :channel_name, :presence=>"true"
	has_many :videos
	belongs_to :user

end
