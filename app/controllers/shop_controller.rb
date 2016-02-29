class ShopController < ApplicationController
  def index
  	@items = Item.order("title asc").all

  end
end
