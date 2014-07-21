class EnrollmentsController < ApplicationController
  
  def create
    student = Student.find(params[:student_id])
    begin
      student.courses << Course.find(params[:course_id])
    rescue
    ensure
      redirect_back_or('/')
    end
  end
  
  def destroy
    student = Student.find(params[:student_id])
    student.courses.delete(Course.find(params[:course_id]))
    redirect_back_or('/')
  end
  
end