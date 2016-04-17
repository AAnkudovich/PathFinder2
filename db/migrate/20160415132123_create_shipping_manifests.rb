class CreateShippingManifests < ActiveRecord::Migration
  def change
    create_table :shipping_manifests do |t|
      t.date :dateOut
      t.integer :shoppingOrder_id
      t.string :shippingStatus
      t.integer :vanID

      t.timestamps null: false
    end
  end
end
