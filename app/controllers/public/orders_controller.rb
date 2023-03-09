class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!

  def new
    @order = Order.new
  end

  def confirm
    @order = current_customer.orders.new(order_params)
    if params[:order][:select] == "0"
      @order.postal_code = current_customer.postal_code
      @order.address = current_customer.address
      @order.name = current_customer.full_name
    elsif params[:order][:select] == "1"
      @address = Address.find(params[:order][:address_id])
      @order.postal_code = @address.postal_code
      @order.address = @address.address
      @order.name = @address.name
    elsif params[:order][:select] == "2"
    end
    @cart_items = current_customer.cart_items
    @total = 0
  end

  def create
    @order = current_customer.orders.new(order_params)
    cart_items = current_customer.cart_items.all
    if @order.save
      cart_items.each do |cart|
        order_details = OrderDetail.new
        order_details.item_id = cart.item_id
        order_details.order_id = @order.id
        order_details.price = cart.item.price
        order_details.amount = cart.amount
        order_details.save
      end
      redirect_to orders_complete_path
      cart_items.destroy_all
    else
      @order = Order.new(order_params)
      render :new
    end
  end

  def complete
  end

  def index
    @orders = current_customer.orders.all
  end

  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details.all
  end

  private

  def order_params
    params.require(:order).permit(:payment_method, :postal_code, :address, :name, :shipping_cost, :total_payment)
  end

end
