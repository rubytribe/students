require 'pry'
class StudsController < ApplicationController

	def new
		@stud = Stud.new
	end


	def create
		@stud = Stud.new(params[:stud])
		if @stud.save
			redirect_to studs_path
		else
			puts @stud.errors.messages
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
		@users=Stud.all
	end

	def show
		@stud = Stud.find(params[:id])
	end
end