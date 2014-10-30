class ExcusesController < ApplicationController
	before_action :set_excuse, only: [:show, :edit, :update, :destroy]

	def index
		@excuses = Excuse.alphabetical.paginate(page: params[:page]).per_page(10)
	end

	def show
	end

	def new
		@excuse = Excuse.new
	end

	def edit
	end

	def create
		@excuse = Excuse.new(excuse_params)

		if @excuse.save
			redirect_to @excuse, notice: "#{@excuse.name} was added to the system."
		else
			render action: 'new'
		end
	end

	def update
		if @excuse.update(excuse_params)
			redirect_to @excuse, notice: "#{@excuse.name } was revised in the system."
		else
			render action: 'edit'
		end
	end

	def destroy
		@excuse.destroy
		redirect_to excuses_url, notice: "#{@excuse.name } was removed from the system."
	end

	private
	def set_excuse
		@excuse = Excuse.find(params[:id])
	end

	def excuse_params
		params.require(:excuse).permit(:name, :reason)
	end
end
