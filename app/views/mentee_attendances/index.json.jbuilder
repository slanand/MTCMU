json.array!(@mentee_attendances) do |mentee_attendance|
  json.extract! mentee_attendance, :id
  json.url mentee_attendance_url(mentee_attendance, format: :json)
end
