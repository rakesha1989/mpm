json.array!(@profiles) do |profile|
  json.extract! profile, :id, :first_name, :last_name, :gender, :d_o_b, :email, :phone, :image, :director, :d_i_n, :company_id, :employee_id
  json.url profile_url(profile, format: :json)
end
