class Contestant < ActiveRecord::Base

	belongs_to :workshop
	mount_uploader :image, ImageUploader
end
