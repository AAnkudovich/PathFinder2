class Cart < ActiveRecord::Base
	has_many :lineitems, :dependent => :destroy
	belongs_to :user
	
	def addItem(item_id)
		current_item = lineitems.find_by_item_id(item_id) 
		if current_item
		current_item.quantity += 1 
	else
		current_item = lineitems.new(item_id: item_id)
		current_item.quantity = 1 
	end
		current_item 
	end
end
