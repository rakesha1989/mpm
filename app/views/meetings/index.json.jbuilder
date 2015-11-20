json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :plan_month, :date, :category, :company_id
  json.url meeting_url(meeting, format: :json)
end
