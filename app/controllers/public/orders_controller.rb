class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!

  def new
    @order = Order.new

  end

  def comfirm
  end

  def complete
  end

  def create
  end

  def index
  end

  def show
  end
end
