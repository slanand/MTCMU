class MembersController < ApplicationController
	before_action :set_member, only: [:show, :edit, :update, :destroy]

	def index
		@members = Member.alphabetical.paginate(page: params[:page]).per_page(10)
		@active_members = Member.active.alphabetical.paginate(page: params[:page]).per_page(10)
		@inactive_members = Member.inactive.alphabetical
	end

	def show
	end

	def new
		@member = Member.new
	end

	def edit
	end

	def create
		@member = Member.new(member_params)

		if @member.save
			redirect_to @member, notice: "#{@member.name} was added to the system."
		else
			render action: 'new'
		end
	end

	def update
		if @member.update(member_params)
			redirect_to @member, notice: "#{@member.name } was revised in the system."
		else
			render action: 'edit'
		end
	end

	def destroy
		@member.destroy
		redirect_to members_url, notice: "#{@member.name } was removed from the system."
	end

	private
	def set_member
		@member = Member.find(params[:id])
	end

	def member_params
		params.require(:member).permit(:andrew_id, :first_name, :last_name, :email, :admin, :active)
	end
end
