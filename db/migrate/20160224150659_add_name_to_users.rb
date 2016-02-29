class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :is_female, :boolean, default: false

    add_column :users, :is_admin, :boolean, default: false
    add_column :users, :is_packer, :boolean, default: false
  end
end
