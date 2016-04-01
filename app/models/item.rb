class Item < ActiveRecord::Base
	has_many :lineitems, dependent: :destroy
	belongs_to :location
	has_one :box
end
