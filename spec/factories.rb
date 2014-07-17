FactoryGirl.define do
  factory :student do
    sequence(:last_name)  { |n| "Person #{n}" }
    sequence(:first_name) { |n| "Person #{n}"}
    birth_date = Date.new(1990,12,03)
  end
end
