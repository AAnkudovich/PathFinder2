class CreateShoppingOrders < ActiveRecord::Migration
  def change
    create_table :shopping_orders do |t|
      t.integer :customer_id
      t.string :payMethod
      t.decimal :total
      t.string :currentStatus

      t.timestamps null: false
    end
  end
end
