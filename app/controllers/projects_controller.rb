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
  end

  def update
  end

  def destroy
  end


  private

  def project_params
    params.require(:project).permit(:name, :activity_attributes => [:name])
  end
end
