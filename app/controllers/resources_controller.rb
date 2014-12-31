class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  def index
    @resources = Resource.alphabetical.paginate(page: params[:page]).per_page(10)
  end

  def show
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_params)
    if @resource.save
      redirect_to @resource, notice: "#{@resource.name} was added to the system." 
    else
      render action: 'new'
    end
  end

  def edit
  end

  def update
    if @resource.update(resource_params)
      redirect_to @mentee, notice: "#{@resource.name} was revised in the system." 
    else
      render action: 'edit'
    end
  end

  def destroy
    @resource.destroy
    redirect_to resources_url, notice: "#{@resource.name} was removed from the system."
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_resource
    @resource = Resource.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def resource_params
    params.require(:resource).permit(:url, :summary, :lesson_id, :name)
  end
end
