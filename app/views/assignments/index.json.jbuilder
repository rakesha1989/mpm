json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :name, :due_at, :activity_id, :category_id, :status
  json.url assignment_url(assignment, format: :json)
end
