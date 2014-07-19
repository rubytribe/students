class StudentsController < ApplicationController
  #attr_accessor :first_name, :last_name, :birth_date
  def index
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save #success
      flash[:success] = "Student added successfully!"
      redirect_to @student
    else 
      render 'new'
    end
  end

  def show
    @student = Student.find(params[:id])
  end
  def showall
    @student = Student.all
  end

  def edit
    @student = Student.find(params[:id])
  end


  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to students_path
    else 
      render 'edit'
    end
  end

  # def destroy
  #   @student.destroy
  #   redirect_to students_path
  # end

  def destroy
    @student = Student.find(params[:id])
    if @student.present?
      @student.destroy
    end
    redirect_to students_path
end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :birth_date)
  end

end
