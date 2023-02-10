class Admin::HomesController < ApplicationController

  def top
    @order_details = Order_detail.page(params[:page]) # kaminariのmethod #
  end

end
