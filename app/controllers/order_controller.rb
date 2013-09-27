class OrderController < ApplicationController
  def new
    @order = Order.create(food_id:params[:food_id],
                          quantity:params[:quantity],
                          price:params[:price],
                          user_id:current_user.id)
  end

  def index
    @orders = Order.where(user_id: current_user.id)
  end

  def show
    @order = Order.create(food_id:params[:food_id],
                          quantity:params[:quantity],
                          price:params[:price],
                          user_id:current_user.id)
  end
end
