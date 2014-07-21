class Course < ActiveRecord::Base
  has_many :enrollments
  has_many :students, through: :enrollments
  
  validates :name, presence: true
  
  default_scope {order('name')}
end
