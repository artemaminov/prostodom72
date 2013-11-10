class HomeController < ApplicationController

  def index
		@current_project = Project.random
		#@article = Article.random
  end


end