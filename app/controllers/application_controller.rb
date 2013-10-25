class ApplicationController < ActionController::Base
  protect_from_forgery

	protected

	before_filter do
		@all_projects = Project.all
	end


end