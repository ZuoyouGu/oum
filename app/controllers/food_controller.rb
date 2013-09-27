class FoodController < ApplicationController
  # To change this template use File | Settings | File Templates.
  def index
    @foods = Food.all
    render :action=>'index'
  end

  def show
    @shop = Shop.where(shop_id: params[:id])
    @foods = @shop.all_foods.paginate(page: params[:page])
  end
end