json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :overview, :lesson_plan, :presentation
  json.url lesson_url(lesson, format: :json)
end
