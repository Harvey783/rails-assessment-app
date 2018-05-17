class ActivitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @project = Project.find(params[:project_id])
    @activities = @project.activities
  end

  def show
  end

  def new
    @project = Project.find(params[:project_id])
    @activity = @project.activities.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end


  private

  def activity_params
    params.require(:activity).permit(:name)
  end
end
