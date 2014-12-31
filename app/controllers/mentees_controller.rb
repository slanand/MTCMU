class MenteesController < ApplicationController
  before_action :set_mentee, only: [:show, :edit, :update, :destroy]

  def index
    @mentees = Mentee.alphabetical.paginate(page: params[:page]).per_page(10)

  end

  def new
    @mentee = Mentee.new
  end

  def create
    @mentee = Mentee.new(mentee_params)
    if @mentee.save
      redirect_to @mentee, notice: "#{@mentee.first_name} #{@mentee.last_name} was added to the system." 
    else
      render action: 'new'
    end
  end

  def edit
  end

  def update
    if @mentee.update(mentee_params)
      redirect_to @mentee, notice: "#{@mentee.first_name} #{@mentee.last_name} was revised in the system." 
    else
      render action: 'edit'
    end
  end

  def destroy
    @mentee.destroy
    redirect_to mentees_url, notice: "#{@mentee.first_name} #{@mentee.last_name} was removed from the system."
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_mentee
    @mentee = Mentee.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def mentee_params
    params.require(:mentee).permit(:first_name, :last_name)
  end

end
