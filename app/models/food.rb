class Food < ActiveRecord::Base
  attr_accessible :name, :price, :shop_id
  belongs_to :shop
  has_many :orders
end
