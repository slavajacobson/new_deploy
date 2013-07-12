class Map < ActiveRecord::Base
	#attr_accessible :name, :image
	#validates :name, default: 'unknown name'
	validates :image, presence: true
	mount_uploader :image, ImageUploader

	before_create


	def default_name
		self.name ||= File.basename(image.filename, '.*').titleize if image
	end

end
