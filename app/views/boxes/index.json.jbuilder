json.array!(@boxes) do |box|
  json.extract! box, :id, :name, :points
  json.url box_url(box, format: :json)
end
