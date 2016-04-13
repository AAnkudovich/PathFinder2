class AddCategoryIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :categoryID, :integer
    add_column :items, :image, :string
  end
end
