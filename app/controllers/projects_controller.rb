class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
    @projects = current_user.projects.all
  end

  def show
    @project = current_user.projects.find(params[:id])
  end

  def new
    @project = current_user.projects.new
  end

  def edit
    @project = current_user.projects.find(params[:id])
  end

  def create
    @project = current_user.projects.new(project_params)
    if @project.save
      redirect_to projects_path(@project)
    else
      render 'new'
    end
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to projects_path(@project)
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:name, :activity_attributes => [:name])
  end
end
