class ShopController < ApplicationController
  def new
  end

  def index
    @shop = Shop.paginate(page: params[:page])
  end

  def show
    @shop = Shop.find(params[:id])
    @foods = @shop.foods.paginate(page: params[:page])
  end
end
