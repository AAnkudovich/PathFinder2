json.array!(@items) do |item|
  json.extract! item, :id, :title, :description, :price, :quantity, :locationId, :boxId, :fragile, :weight
  json.url item_url(item, format: :json)
end
