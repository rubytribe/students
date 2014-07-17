namespace :db do
  desc 'fill the database with sample data'
  task populate: :environment do
    make_students
    make_courses
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
       'English', 'Mathematics', 'Astromony', 'Chemistry']
    courses.each do |c|
      Course.create(name: c)
    end
  end
  
end