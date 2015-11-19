json.array!(@assignment_employees) do |assignment_employee|
  json.extract! assignment_employee, :id, :assignmnet_id, :employee_id
  json.url assignment_employee_url(assignment_employee, format: :json)
end
