json.array!(@vans) do |van|
  json.extract! van, :id, :regPlate
  json.url van_url(van, format: :json)
end
