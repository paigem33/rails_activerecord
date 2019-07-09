class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :products
      t.integer :quantity
      t.string :account_id
      t.datetime :ship_date
      t.timestamps
    end
  end
end
