class Item < ActiveRecord::Base
	has_many :lineitems, dependent: :destroy
	belongs_to :location
	has_one :box

	def self.search(search)
	  where("title LIKE ?", "%#{search}%") 
	  
	end
end
