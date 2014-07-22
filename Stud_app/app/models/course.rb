class Course < ActiveRecord::Base
	attr_accessible :name
	validates :name, presence: true
	has_many :enrollements
	has_many :studs, through: :enrollements
end
