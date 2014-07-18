class CoursesController < ApplicationController
	before_action :set_course, only: [:show, :edit, :update, :destroy]

	def index
      @courses=Course.all
	end

	def show
  end

	def new
	  @course=Course.new
	end

	def edit
	end

	def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to @course
    end
  end

  def update
    @course.update(course_params)
  end

  def destroy
    @course.destroy
    redirect_to @course
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:course_name)
    end
end
