json.array!(@shopping_orders) do |shopping_order|
  json.extract! shopping_order, :id, :customer_id, :payMethod, :total, :currentStatus
  json.url shopping_order_url(shopping_order, format: :json)
end
