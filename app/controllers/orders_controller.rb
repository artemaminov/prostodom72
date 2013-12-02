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
    @order = Order.new params[:order]
    @current_project = Project.find_by_id params[:order][:project_id]
    if @order.save
      flash.keep[:notice] = t('order.success')
      new_order_notify(@order)
      redirect_to action: :new
    else
      flash.now[:error] = t('order.error')
      render :index
    end
  end


  private

  def new_order_notify(order)
    Notifications.seller(order).deliver
    Notifications.buyer(order).deliver
  end


end