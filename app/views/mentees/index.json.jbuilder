json.array!(@mentees) do |mentee|
  json.extract! mentee, :id, :first_name, :last_name
  json.url mentee_url(mentee, format: :json)
end
