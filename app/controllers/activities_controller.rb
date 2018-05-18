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
    @project = Project.find(params[:project_id])
    @activity = Activity.find(params[:id])
  end

  def create
    @project = Project.find(params[:project_id])
    @activity = @project.activities.new(activity_params)
    if @activity.save
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  def update
    @project = Project.find(params[:project_id])
    @activity = Activity.find(params[:id])
    @activity.update(activity_params)
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:project_id])
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to project_path(@project)
  end

  private

  def activity_params
    params.require(:activity).permit(:name)
  end
end
