FactoryGirl.define do
  factory :student do
    sequence(:last_name)  { |n| "Person #{n}" }
    sequence(:first_name) { |n| "Person #{n}"}
    birth_date = rand(10.years).ago
  end
end
