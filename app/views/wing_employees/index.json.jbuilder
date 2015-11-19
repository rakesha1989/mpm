json.array!(@wing_employees) do |wing_employee|
  json.extract! wing_employee, :id, :wing_id, :employee_id
  json.url wing_employee_url(wing_employee, format: :json)
end
