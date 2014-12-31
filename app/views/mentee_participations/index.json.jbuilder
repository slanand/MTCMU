json.array!(@mentee_participations) do |mentee_participation|
  json.extract! mentee_participation, :id
  json.url mentee_participation_url(mentee_participation, format: :json)
end
