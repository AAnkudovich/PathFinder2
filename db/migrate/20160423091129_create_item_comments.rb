class CreateItemComments < ActiveRecord::Migration
  def change
    create_table :item_comments do |t|
      t.integer :userID
      t.integer :itemID
      t.integer :rating
      t.text :message

      t.timestamps null: false
    end
  end
end
