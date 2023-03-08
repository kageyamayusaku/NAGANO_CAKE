class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!

  def new
    @order = Order.new
  end

  def confirm
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    if params[:order][:select] == "0"
      @order.postal_code = current_customer.postal_code
      @order.address = current_customer.address
      @order.name = current_customer.full_name
    elsif params[:order][:select] == "1"
      if Address.exists?(params[:order][:address_id])
        @address = Address.find(params[:order][:address_id])
        @order.postal_code = @address.postal_code
        @order.address = @address.address
        @order.name = @address.name
      else
        render :new
      end
    elsif params[:order][:select] == "2"
    end
    @cart_items = current_customer.cart_items
    @total = 0
    @order2 = Order.new
  end

  def complete
  end

  def create
    @order = Order.new(order_params)
    @order.shipping_cost = 500
    @order.customer_id = current_customer.id
    @order.save
    @order_details = OrderDetail.new
    @cart_items = current_customer.cart_items
    @order_details.

    redirect_to orders_complete_path
  end

  def index
  end

  def show
  end

  private

  def order_params
    params.require(:order).permit(:payment_method, :postal_code, :address, :name, :total_payment)
  end

end
