class GalleriesController < ApplicationController

  def index
		@current_project = Project.random
	end


end