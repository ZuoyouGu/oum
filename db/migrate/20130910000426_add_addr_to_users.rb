class AddAddrToUsers < ActiveRecord::Migration
  def change
    add_column :users, :addr, :string
  end
end
