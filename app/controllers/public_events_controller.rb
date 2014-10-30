class PublicEventsController < ApplicationController
	before_action :set_event, only: [:show, :edit, :update, :destroy]

	def index
		@upcoming_events = PublicEvent.upcoming.chronological.paginate(page: params[:page]).per_page(10)
		@past_events = PublicEvent.past.chronological.paginate(page:params[:page]).per_page(10)
	end

	def show
	end

	def new
		@event = PublicEvent.new
	end

	def edit
	end

	def create
		@event = PublicEvent.new(public_event_params)

		if @event.save
			redirect_to @event, notice: "#{@event.name} was added to the system."
		else
			render action: 'new'
		end
	end

	def update
		if @event.update(public_event_params)
			redirect_to @event, notice: "#{@event.name } was revised in the system."
		else
			render action: 'edit'
		end
	end

	def destroy
		@event.destroy
		redirect_to public_events_url, notice: "#{@event.name } was removed from the system."
	end

	private
	def set_event
		@event = PublicEvent.find(params[:id])
	end

	def public_event_params
		params.require(:public_event).permit(:name, :description, :start_date, :end_date, :time, :meeting_type_id, :flyer)
	end
end
