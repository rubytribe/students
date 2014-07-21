class EnrollmentsController < ApplicationController
  
  def create
    student = Student.find(params[:student_id])
    course = Course.find(params[:course_id])
    student.courses << course unless student.courses.include?(course)
    redirect_back_or('/')
  end
  
  def destroy
    student = Student.find(params[:student_id])
    course = Course.find(params[:course_id])
    student.courses.delete(course) if student.courses.include?(course)
    redirect_back_or('/')
  end
  
end