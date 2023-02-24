class Public::ItemsController < ApplicationController
  def index
    @genres = Genre.all
    @items = Item.all
    @items2 = Item.page(params[:page]) # kaminariのmethod #
  end

  def show
    @genres = Genre.all
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end
end