class Item < ActiveRecord::Base
	has_many :lineitems
	belongs_to :location
end
