class FinishedController < ProjectsController

  def index
    @current_project = Project.random
    @all_projects = Project.finished
  end

  def show
    @current_project = Project.find params[:id]
    @all_projects = Project.finished
    @gallery = @current_project.attachments.order('position ASC')
    @replace_scroller_link = true # Hide show additional project info switch
    @items_per_page = 6
  end


end