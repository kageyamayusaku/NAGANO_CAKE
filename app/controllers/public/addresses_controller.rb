class Public::AddressesController < ApplicationController
  before_action :authenticate_customer!

  def index
    @address = Address.new
    @addresses = Address.all
  end

  def edit
    @address = current_customer
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      flash[:notice] = ""
      redirect_to addresses_path
    else
      render :index
    end
  end

  def update
    @address = current_customer
  end

  def destroy
    @address = current_customer
  end

  private

  def address_params
    params.require(:address).permit(:postal_code, :address, :name, :customer_id)
  end

end
