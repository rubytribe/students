class Course < ActiveRecord::Base
  has_many :course_memberships
  has_many :students, through: :course_memberships
  
  validates :name, presence: true
end
