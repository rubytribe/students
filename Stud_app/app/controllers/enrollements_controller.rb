class EnrollementsController < ApplicationController
	def create
	  student = Stud.find(params[:stud_id])
    course = Course.find(params[:course_id])
    student.courses << course unless student.courses.include?(course)
    redirect_to :back
  end

  
  def destroy
  	student = Stud.find(params[:stud_id])
    course = Course.find(params[:course_id])
    student.courses.delete(course) 
    redirect_to :back
  end
end
