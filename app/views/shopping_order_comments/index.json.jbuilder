json.array!(@shopping_order_comments) do |shopping_order_comment|
  json.extract! shopping_order_comment, :id, :userID, :packingRating, :packingRating, :shoppingOrderID, :deliveryRating, :message
  json.url shopping_order_comment_url(shopping_order_comment, format: :json)
end
