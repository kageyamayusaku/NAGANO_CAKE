class Public::CustomersController < ApplicationController
  before_action :authenticate_costomer!, except: [:show]

  def show
    @costomer = Customer.find(params[:id])
  end

  def edit
  end

  def update
  end

  def unsubscribe
  end

  def withdraw
  end
end
