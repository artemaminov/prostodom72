class ProjectsController < ApplicationController

  def index
    @current_project = Project.random
  end

  def show
    @current_project = Project.find params[:id]
    @gallery = @current_project.attachments.order('position ASC')
    @replace_scroller_link = true # Hide show additional project info switch
    @items_per_page = 6
  end

  def finished
    if params[:id].nil?
      @current_project = Project.random
      @all_projects = Project.finished
      render :index
    else
      @current_project = Project.find params[:id]
      @gallery = @current_project.attachments.order('position ASC')
      render :show
    end
  end


end