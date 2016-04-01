class CreatePackingJobs < ActiveRecord::Migration
  def change
    create_table :packing_jobs do |t|
      t.integer :customer_id
      t.integer :shoppingOrder_id

      t.timestamps null: false
    end
  end
end
