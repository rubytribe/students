class Student < ActiveRecord::Base
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :birth_date, presence: true
end
