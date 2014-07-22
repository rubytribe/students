class Enrollement < ActiveRecord::Base
	attr_accessible :stud_id, :course_id
	belongs_to :stud
	belongs_to :course
end
