class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @show_form = request.post?
  end

  def create
    @project = Project.new(projects_params)
    @project.project_image.attach(projects_params[:project_image])

    redirect_to projects_index_path if @project.save
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to projects_index_path
  end

  private

  def projects_params
    params.permit(:title, :body, :link, :stack, :project_image)
  end
end
