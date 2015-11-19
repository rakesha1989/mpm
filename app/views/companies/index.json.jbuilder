json.array!(@companies) do |company|
  json.extract! company, :id, :suffix, :name, :cin_no, :pan_no, :service
  json.url company_url(company, format: :json)
end
