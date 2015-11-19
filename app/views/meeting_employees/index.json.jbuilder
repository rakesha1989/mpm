json.array!(@meeting_employees) do |meeting_employee|
  json.extract! meeting_employee, :id, :meeting_id, :employee_id
  json.url meeting_employee_url(meeting_employee, format: :json)
end
