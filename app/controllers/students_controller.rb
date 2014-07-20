class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update, :destroy, :courses, :add_course]
  before_action :get_courses, only: [:show, :courses]
  
  
  def index
    @students = Student.paginate(page: params[:page], per_page: 15)
  end
  
  def new
    @student = Student.new
  end
  
  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path
    else
      render 'new'
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @student.update(student_params)
      redirect_to students_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @student.destroy
    redirect_to students_path
  end
  
  def courses
  end
  
  def add_course
    @courses = Course.all
  end

  
  private
  
    def student_params
      params.require(:student).permit(:first_name, :last_name, :birth_date)
    end
    
    # Filters
    
    def find_student
      @student = Student.find(params[:id])
    end
    
    def get_courses
      @courses = @student.courses
    end
  
end
