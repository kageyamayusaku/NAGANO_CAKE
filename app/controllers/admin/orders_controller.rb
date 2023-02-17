class Admin::OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
    @order_details = OrderDetail.all
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      flash[:notice] = ""
      redirect_to admin_path(@order.id)
    else
      render :show
    end
  end

  private

  def order_params
    params.require(:order).permit(:status)
  end

end