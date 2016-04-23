class CreateShoppingOrderComments < ActiveRecord::Migration
  def change
    create_table :shopping_order_comments do |t|
      t.integer :userID
      t.integer :packingRating
      t.integer :packingRating
      t.integer :shoppingOrderID
      t.integer :deliveryRating
      t.text :message

      t.timestamps null: false
    end
  end
end
