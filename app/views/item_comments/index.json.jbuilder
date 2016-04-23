json.array!(@item_comments) do |item_comment|
  json.extract! item_comment, :id, :userID, :itemID, :rating, :message
  json.url item_comment_url(item_comment, format: :json)
end
