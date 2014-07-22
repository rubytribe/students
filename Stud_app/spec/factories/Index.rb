require 'faker'
FactoryGirl.define do
 factory :student do |f| 
 	f.first_name { Faker::Name.first_name }
 	f.last_name { Faker::Name.last_name }
 	f.birth_date "15-07-1994"
 	f.email "alex122e@gmail.com"
 end 
end 

