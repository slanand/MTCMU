json.array!(@classroom_lessons) do |classroom_lesson|
  json.extract! classroom_lesson, :id
  json.url classroom_lesson_url(classroom_lesson, format: :json)
end
