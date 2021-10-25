class ShopsController < ApplicationController
  def new
  end

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find params[:id]
  end

  private
  def user_params
    params.require(:shop).permit(:shop_name)
  end
end
