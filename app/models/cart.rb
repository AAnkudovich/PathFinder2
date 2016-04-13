class Cart < ActiveRecord::Base
	has_many :lineitems, :dependent => :destroy
	belongs_to :user
	
	def addItem(item_id,quantity)
		current_item = lineitems.find_by_item_id(item_id) 
		if current_item
		current_item.quantity += quantity 
	else
		current_item = lineitems.new(item_id: item_id)
		current_item.quantity = quantity 
	end
		current_item 
	end
end
