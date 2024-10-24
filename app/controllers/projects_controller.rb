class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @show_form = request.post?
  end

  def create
    @project = Project.new(projects_params)

    redirect_to projects_index_path if @project.save
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to projects_index_path
  end

  private

  def projects_params
    params.permit(:title, :body, :link, :stack)
  end
end
