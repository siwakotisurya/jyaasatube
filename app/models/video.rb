class Video < ActiveRecord::Base
	belongs_to :channel
	has_attached_file :video
	validates :video, presence: true
	validates_attachment_content_type :video, :content_type => ["video/mp4"]
end
