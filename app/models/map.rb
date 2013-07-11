class Map < ActiveRecord::Base
	#attr_accessible :name, :image
	validates :name, presence: true
	validates :image, presence: true
	mount_uploader :image, ImageUploader
end
