
class CoursesController < ApplicationController

	def new
		@course = Course.new
	end

	def index
		@courses = Course.paginate(:page => params[:page], :per_page => 10)
	end

	def create
		@course = Course.new(course_params)
		if @course.save
			redirect_to courses_path
		else
			render 'new'
		end
	end

	def edit
		@course = Course.find(params[:id])
	end

	def update
		@course = Course.find(params[:id])
		if @course.update(course_params)
    	redirect_to courses_path
 	 	else
   		render 'edit'
  	end
	end

	def course_params
		params.require(:course).permit(:name)
	end


	 def destroy
	 	@course = Course.find(params[:id])
	 	if @course.destroy
	 		redirect_to courses_path
	 	end
	 end

	def show
		@course = Course.find(params[:id])
		@students = Stud.all
		@stud_courses = @course.studs
	end
end
