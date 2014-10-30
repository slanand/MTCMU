class TeachersController < ApplicationController
	before_action :set_teacher, only: [:show, :edit, :update, :destroy]

	def index
		@active_teachers = Teacher.active.alphabetical.paginate(page: params[:page]).per_page(10)
		@inactive_teachers = Teacher.inactive.alphabetical
	end

	def show
	end

	def new
		@teacher = Teacher.new
	end

	def edit
	end

	def create
		@teacher = Teacher.new(teacher_params)

		if @teacher.save
			redirect_to @teacher, notice: "#{@teacher.first_name @teacher.last_name} was added to the system."
		else
			render action: 'new'
		end
	end

	def update
		if @teacher.update(teacher_params)
			redirect_to @teacher, notice: "#{@teacher.first_name @teacher.last_name} was revised in the system."
		else
			render action: 'edit'
		end
	end

	def destroy
		@teacher.destroy
		redirect_to teachers_url, notice: "#{@teacher.first_name @teacher.last_name } was removed from the system."
	end

	private
	def set_teacher
		@teacher = Teacher.find(params[:id])
	end

	def teacher_params
		params.require(:teacher).permit(:first_name, :last_name, :phone, :email, :partner, :school_id, :active)
	end
end
