class Public::ItemsController < ApplicationController
  def index
    @genres = Genre.all
    @items = Item.all
    @items2 = Item.page(params[:page]) # kaminariのmethod #
  end

  def show

  end
end
