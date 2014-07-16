namespace :db do
  desc 'fill the database with sample data'
  task populate: :environment do
    make_students
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
  
end