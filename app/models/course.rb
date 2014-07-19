class Course < ActiveRecord::Base
  has_many :enrollment
  has_many :students, through: :enrollment
  
  validates :name, presence: true
end
