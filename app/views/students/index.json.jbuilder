json.array!(@students) do |student|
  json.extract! student, :last_name, :first_name, :birth_date
  json.url student_url(student, format: :json)
end