class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.integer :quantity
      t.integer :locationId
      t.integer :boxId
      t.boolean :fragile
      t.decimal :weight

      t.timestamps null: false
    end
  end
end
