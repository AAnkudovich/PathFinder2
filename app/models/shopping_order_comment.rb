class ShoppingOrderComment < ActiveRecord::Base
	belongs_to :user, dependent: :destroy
	belongs_to :shoppingOrder
end
