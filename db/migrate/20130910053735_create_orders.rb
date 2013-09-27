class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :food_id
      t.integer :quantity
      t.string :price

      t.timestamps
    end
  end
end
