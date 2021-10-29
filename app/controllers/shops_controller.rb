class ShopsController < ApplicationController
  def new
  end

  def index
    @shops = Shop.search(params[:search])
  end

  def show
    @shop = Shop.find params[:id]
  end

  private
  def user_params
    params.require(:shop).permit(:name)
  end
end
