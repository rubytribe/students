class Student < ActiveRecord::Base
  validates :first_name, presence: true, length:{minimum: 2}
  validates :last_name, presence: true, length:{minimum: 2}
  validates :bdate, presence: true, length:{minimum: 10, maximum: 10}
  has_many :studentcourse
  has_many :courses, :through => :studentcourse
end