require 'faker'
FactoryGirl.define do
 factory :course do |c| 
 	c.name { Faker::Name.name }
 end 
end 

