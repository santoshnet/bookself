json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :dob, :address, :email, :Phone, :user_id
  json.url profile_url(profile, format: :json)
end
