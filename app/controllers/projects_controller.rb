class ProjectsController < ApplicationController

  def index
		@current_project = Project.random
	end

	def show
		@current_project = Project.find_by_id(params[:id])
	end


end