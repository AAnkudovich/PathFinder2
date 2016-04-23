class Lineitem < ActiveRecord::Base
	belongs_to :cart
    belongs_to :item
    belongs_to :shopping_order

    def sortingMethod(lineitem)
    weightPoints = lineitem.item.weight
    fragilePoints = 0
    if lineitem.item.fragile
        fragilePoints=60
    end
    box = Box.find(lineitem.item.boxId) 
    boxPoints = box.points


   returningpoints=weightPoints - fragilePoints + boxPoints

    end
    
end
