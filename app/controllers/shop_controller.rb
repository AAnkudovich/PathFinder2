class ShopController < ApplicationController
  def index
  	@items = Item.order("title asc").all

  end
  def floorLayout
  	@locations = Location.all
  	@items = Item.all

  end
  def pathSearch
  	@locations = Location.all
  	@items = Item.all

  end
end
