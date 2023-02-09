class Admin::ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = "You have created book successfully."
      redirect_to admin_item_path(@item.id)
    else
      render :new
    end
  end

  def show
  end

  def index
  end

  def edit
  end

  def update
  end


  private

  def item_params
    params.require(:item).permit(:image, :name, :introduction, :price, :is_active)
  end

end
