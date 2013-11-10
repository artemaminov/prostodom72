class ArticlesController < ApplicationController

  def index
		@current_article = Article.random
		@article = Article.random
		@current_project = Project.random
	end

	def show
		@current_article = Article.random
		@article = Article.find_by_id params[:id]
		@current_project = Project.random
		render :index
	end


end