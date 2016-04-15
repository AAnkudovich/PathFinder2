json.array!(@shipping_manifests) do |shipping_manifest|
  json.extract! shipping_manifest, :id, :dateOut, :shoppingOrder_id, :shippingStatus, :vanID
  json.url shipping_manifest_url(shipping_manifest, format: :json)
end
