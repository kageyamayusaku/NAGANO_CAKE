class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!

  def top
    @order_details = OrderDetail.page(params[:page]) # kaminariのmethod #
  end

end
