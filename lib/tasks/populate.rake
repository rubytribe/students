namespace :db do
  desc "Fill database with students"
  task populate: :environment do
    Student.create!(last_name: "Example",
                    first_name: "User",
                    birth_date: "1990-10-12")
    99.times do |n|
      last_name  = Faker::Name.last_name
      first_name = Faker::Name.first_name
      birth_date  = rand(10.years).ago
      Student.create!(last_name: last_name,
                   first_name: first_name,
                   birth_date: birth_date)
    end
  end
end
