json.array!(@lineitems) do |lineitem|
  json.extract! lineitem, :id, :item_id, :shopping_order_id, :cart_id, :quantity
  json.url lineitem_url(lineitem, format: :json)
end
