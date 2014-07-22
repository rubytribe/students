class Course < ActiveRecord::Base
  validates :course_name, presence: true, length:{minimum: 2}
  has_many :studentcourse
  has_many :students, :through => :studentcourse
end
