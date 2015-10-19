class Channel < ActiveRecord::Base
	
	validates :name, :presence=>"true"
	has_many :videos
	belongs_to :user

end
