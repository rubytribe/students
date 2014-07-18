class CourseMembershipsController < ApplicationController
  def new
  end
  
  
  def create
    student = Student.find(params[:student_id])
    student.courses << Course.find(params[:course_id])
    redirect_to students_path
  end
  
  def destroy
    
  end
  
end
  