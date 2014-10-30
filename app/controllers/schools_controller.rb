class SchoolsController < ApplicationController
	before_action :set_school, only: [:show, :edit, :update, :destroy]

	def index
		@active_schools = School.active.alphabetical.paginate(page: params[:page]).per_page(10)
		@inactive_schools = School.inactive.alphabetical
	end

	def show
	end

	def new
		@school = School.new
	end

	def edit
	end

	def create
		@school = School.new(school_params)

		if @school.save
			redirect_to @school, notice: "#{@school.name} was added to the system."
		else
			render action: 'new'
		end
	end

	def update
		if @school.update(school_params)
			redirect_to @school, notice: "#{@school.name } was revised in the system."
		else
			render action: 'edit'
		end
	end

	def destroy
		@school.destroy
		redirect_to schools_url, notice: "#{@school.name } was removed from the system."
	end

	private
	def set_school
		@school = School.find(params[:id])
	end

	def school_params
		params.require(:school).permit(:name, :street_1, :street_2, :active)
	end
end
