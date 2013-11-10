class ProjectsController < ApplicationController

  def index
		@current_project = Project.random
	end

	def show
		@current_project = Project.find params[:id]
		@replace_scroller_link = true
	end


end