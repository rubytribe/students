
class StudsController < ApplicationController

	def new
		@stud = Stud.new
	end


	def create
		@stud = Stud.new(stud_params)
		if @stud.save
			redirect_to studs_path
		else
			render 'new'
		end
	end

	def edit
		@stud = Stud.find(params[:id])
  end

	def update
  	@stud = Stud.find(params[:id])
  	if @stud.update_attributes(params[:stud])
    	redirect_to studs_path
 	 	else
   		render 'edit'
  	end
	end

	def destroy
		@stud = Stud.find(params[:id])
		if @stud.destroy
			redirect_to studs_path
		end
	end


	def index
		@users=Stud.paginate(:page => params[:page], :per_page => 10)
	end

	def show
		@stud = Stud.find(params[:id])
		@courses = Course.all
		@courses_stud = @stud.courses
	end

	def stud_params
		params.require(:stud).permit(:first_name, :last_name, :birth_date, :email)
	end
      
end