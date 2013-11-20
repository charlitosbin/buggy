class ProjectsController < ApplicationController
  respond_to :json
  
  def index
    @projects = Project.all
  end
  
  def create
    project = Project.new(project_params)
    project.save
    puts project
    respond_with(project)
  end
  
  def show
    @project = Project.find(params[:id])
  end
  
  def destroy
    project = Project.find(params[:id])
    project.destroy
    respond_with(project)
  end
  
  private
  def project_params
    params.require(:project).permit(:name, :description)
  end
end
