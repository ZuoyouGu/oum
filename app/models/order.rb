class Order < ActiveRecord::Base
  attr_accessible :food_id, :price, :quantity, :user_id
  validates :food_id, :price, :quantity, :user_id, presence:   true
  belongs_to :user
  belongs_to :food
end
