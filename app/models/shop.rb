class Shop < ActiveRecord::Base
  attr_accessible :addr, :name
  has_many :foods

  def all_foods
    # This is preliminary. See "Following users" for the full implementation.
    Food.where("shop_id = ?", id)
  end
end
