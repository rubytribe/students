class EnrollmentsController < ApplicationController
  
  def create
    student = Student.find(params[:student_id])
    begin
      student.courses << Course.find(params[:course_id])
      redirect_to students_path
    rescue
      redirect_to students_path
    end
  end
  
  def destroy
    student = Student.find(params[:student_id])
    student.courses.delete(params[:course_id])
    redirect_to students_path
  end
  
end