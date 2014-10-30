class ClassroomsController < ApplicationController
	before_action :set_classroom, only: [:show, :edit, :update, :destroy]

	def index
		@active_classrooms = Classroom.active.alphabetical.paginate(page: params[:page]).per_page(10)
		@inactive_classrooms = Classroom.inactive.alphabetical
	end

	def show
	end

	def new
		@classroom = Classroom.new
	end

	def edit
	end

	def create
		@classroom = Classroom.new(classroom_params)

		if @classroom.save
			redirect_to @classroom, notice: "#{@classroom.classroom_number} was added to the system."
		else
			render action: 'new'
		end
	end

	def update
		if @classroom.update(classroom_params)
			redirect_to @classroom, notice: "#{@classroom.school_name @classroom.title} was revised in the system."
		else
			render action: 'edit'
		end
	end

	def destroy
		@classroom.destroy
		redirect_to classrooms_url, notice: "#{@classroom.school_name @classroom.title} was removed from the system."
	end

	private
	def set_classroom
		@classroom = Classroom.find(params[:id])
	end

	def classroom_params
		params.require(:classroom).permit(:classroom_id, :classroom_number, :active)
	end
end
