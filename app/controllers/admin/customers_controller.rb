class Admin::CustomersController < ApplicationController
  def show
  end

  def index
    @customers = Customer.page(params[:page]) # kaminariのmethod #
  end

  def edit
  end

  def update
  end
end
