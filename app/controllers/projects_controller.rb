class ProjectsController < ApplicationController

  def index
		@current_project = params[:id] ? Project.find_by_id(params[:id]) : Project.random
	end


end