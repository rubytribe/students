namespace :db do
  desc 'fill the database with sample data'
  task populate: :environment do
    make_students
    make_courses
    make_enrollments
  end
  
  def make_students
    60.times do |n|
      s = Student.new
      s.first_name = Faker::Name.first_name
      s.last_name = Faker::Name.last_name
      s.birth_date = rand(10.years).ago
      s.save
    end
  end
  
  def make_courses
    courses = ['Computer Science', 'Philosopy', 'Electrical Engineering', 'Literature',
       'English', 'Mathematics', 'Astronomy', 'Chemistry', 'Music', 'Psychology',
       'Physics', 'Genetics', 'Sociology', 'Biology', 'Geograpyh', 'Economics', 'Antropology']
    courses.each do |c|
      Course.create(name: c)
    end
  end
  
  def make_enrollments
    students = Student.all.limit(10)
    students.each do |s|
      5.times do
      course = Course.find(rand(1..10))
      s.courses << course unless s.courses.include?(course)
      end
    end
  end
  
end