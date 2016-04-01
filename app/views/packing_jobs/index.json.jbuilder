json.array!(@packing_jobs) do |packing_job|
  json.extract! packing_job, :id, :customer_id, :shoppingOrder_id
  json.url packing_job_url(packing_job, format: :json)
end
