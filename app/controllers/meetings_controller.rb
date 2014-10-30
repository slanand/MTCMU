class MeetingsController < ApplicationController
	before_action :set_meeting, only: [:show, :edit, :update, :destroy]

	def index
		@meetings = Meeting.by_type.chronological.paginate(page: params[:page]).per_page(10)
	end

	def show
	end

	def new
		@meeting = Meeting.new
	end

	def edit
	end

	def create
		@meeting = Meeting.new(meeting_params)

		if @meeting.save
			redirect_to @meeting, notice: "#{@meeting.date} was added to the system."
		else
			render action: 'new'
		end
	end

	def update
		if @meeting.update(meeting_params)
			redirect_to @meeting, notice: "#{@meeting.date } was revised in the system."
		else
			render action: 'edit'
		end
	end

	def destroy
		@meeting.destroy
		redirect_to meetings_url, notice: "#{@meeting.date } was removed from the system."
	end

	private
	def set_meeting
		@meeting = Meeting.find(params[:id])
	end

	def meeting_params
		params.require(:meeting).permit(:meeting_type_id, :date, :meeting_minutes, :classroom_semester_id)
	end
end
