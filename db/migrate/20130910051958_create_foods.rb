class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.integer :shop_id
      t.string :name
      t.string :price

      t.timestamps
    end
  end
end
