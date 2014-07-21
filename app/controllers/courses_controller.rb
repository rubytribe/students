class CoursesController < ApplicationController
  before_action :find_course, only: [:show, :edit, :update, :destroy, :add_student]
  before_action :get_students, only: [:show]
  
  def index
    @courses = Course.paginate(page: params[:page], per_page: 10)
  end

  def new
    @course = Course.new
  end

  
  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to course_path(@course)
    else
      render 'new'
    end
  end


  def edit    
  end


  def update
    if @course.update(course_params)
      redirect_to course_path(@course)
    else
      render 'edit'
    end
  end


  def show
  end
  
  def destroy
    @course.destroy
    redirect_to(courses_path)
  end

  
  def add_student
    @students = Student.paginate(page: params[:page], per_page: 20)
  end

  
  
  private
  
    def course_params
      params.require(:course).permit(:name)
    end
    
    # Filters
    
    def find_course
      @course = Course.find(params[:id])
    end
    
    def get_students
      @students = @course.students
    end
  
end
