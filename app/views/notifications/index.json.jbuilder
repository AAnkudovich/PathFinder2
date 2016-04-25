json.array!(@notifications) do |notification|
  json.extract! notification, :id, :fromID, :toID, :message, :regardingID, :seen
  json.url notification_url(notification, format: :json)
end
