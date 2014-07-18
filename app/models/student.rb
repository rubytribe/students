class Student < ActiveRecord::Base
  # attr_accessor :first_name, :last_name, :birth_date
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birth_date, presence: true
end
