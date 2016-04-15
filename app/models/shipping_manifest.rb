class ShippingManifest < ActiveRecord::Base
	belongs_to :shoppingOrder
	
	def findDistanceForDelivery(shipping_manifest_id)
        @shipping_manifest=ShippingManifest.find(shipping_manifest_id)
         @shoppingorder = ShoppingOrder.find(@shipping_manifest.shoppingOrder_id) 
         @customer = User.find(@shoppingorder.customer_id)
         @customer.distance_to("DIT Aungier Street Dublin")
    end
end
