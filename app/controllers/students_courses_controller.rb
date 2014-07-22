class StudentsCoursesController < ApplicationController
  def show
  end
  def index
  end
  def create
    @sc = StudentsCourses.new(params[:ids,:idc])

    respond_to do |format|
      if @sc.save
        redirect_to @student
      end
    end
  end  
end
