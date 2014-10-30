class MeetingTypesController < ApplicationController
	before_action :set_meeting_type, only: [:show, :edit, :update, :destroy]

	def index
		@meeting_types = MeetingType.alphabetical.paginate(page: params[:page]).per_page(10)
	end

	def show
	end

	def new
		@meeting_type = MeetingType.new
	end

	def edit
	end

	def create
		@meeting_type = MeetingType.new(meeting_type_params)

		if @meeting_type.save
			redirect_to @meeting_type, notice: "#{@meeting_type.type } was added to the system."
		else
			render action: 'new'
		end
	end

	def update
		if @meeting_type.update(meeting_type_params)
			redirect_to @meeting_type, notice: "#{@meeting_type.type } was revised in the system."
		else
			render action: 'edit'
		end
	end

	def destroy
		@meeting_type.destroy
		redirect_to meeting_types_url, notice: "#{@meeting_type.type } was removed from the system."
	end

	private
	def set_meeting_type
		@meeting_type = MeetingType.find(params[:id])
	end

	def meeting_type_params
		params.require(:meeting_type).permit(:type, :points)
	end
end
