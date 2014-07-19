class CoursesController < ApplicationController
  def index
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to courses_path
    else
      render 'new'
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def destroy
    @course = Course.find(params[:id])
    if @course.present?
      @course.destroy
    end
    redirect_to courses_path
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      redirect_to courses_path
    else
      render 'new'
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def showall
    @course = Course.all
  end
  

  private
  def course_params
    params.require(:course).permit(:name)
  end

end
