class Lineitem < ActiveRecord::Base
	belongs_to :cart
    belongs_to :item
    belongs_to :shopping_order
end
