class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :fromID
      t.integer :toID
      t.text :message
      t.integer :regardingID
      t.boolean :seen

      t.timestamps null: false
    end
  end
end
