class OrdersController < ApplicationController

  def index
		@order = Order.new
		@current_project = Project.random
	end

	def new
		@current_project = Project.find_by_id params[:project_id]
		@order = Order.new
		render :index
	end

  def create

	end


end