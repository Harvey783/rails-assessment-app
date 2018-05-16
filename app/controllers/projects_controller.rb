class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
  end

  def new
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

  def project_params
    params.require(:project).permit(:name, :activity_attributes => [:name])
  end
end
