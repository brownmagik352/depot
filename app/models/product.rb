class Product < ActiveRecord::Base

	validates :title, :description, :image_url,
		presence: true #checks that these items are filled in

	validates :price, 
		numericality: {greater_than_or_equal_to: 0.01} #insures positive integer

	validates :title, 
		uniqueness: true #each product has unique title

	validates :image_url, 
		allow_blank: true, #avoid multiple error messages
		format: { 
			with: %r{\.(gif|jpg|png)\Z}i,
			message: 'must be a URL for GIF, JPG, or PNG image.'
		}

end
