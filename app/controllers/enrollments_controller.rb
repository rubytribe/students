class EnrollmentsController < ApplicationController
  before_action :get_student_and_course
  
  def create
    @student.courses << @course unless @student.courses.include?(@course)
    redirect_back(params[:last_url], '/')
  end
  
  def destroy
    @student.courses.delete(@course) if @student.courses.include?(@course)
    redirect_back(params[:last_url], '/')
  end
  
  
  private
  
    def get_student_and_course
      @student = Student.find(params[:student_id])
      @course = Course.find(params[:course_id])
    end

  
end