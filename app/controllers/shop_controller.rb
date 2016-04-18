class ShopController < ApplicationController
  before_action :must_be_admin, only: [:floorLayout, :pathSearch,:usersList]
  def index
  	@items = Item.order("title asc").all
    @lineitem = Lineitem.new
  end
  def floorLayout
  	@locations = Location.all
  	@items = Item.all

  end
  def pathSearch
  	@locations = Location.all
  	@items = Item.all

  end
  def usersList
  end
end
