class EnrollmentsController < ApplicationController
  
  def create
    student = Student.find(params[:student_id])
    student.courses << Course.find(params[:course_id])
    redirect_to students_path
  end
  
  def destroy
    student = Student.find(params[:student_id])
    student.courses.delete(params[:course_id])
  end
  
end