class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :is_female, :boolean, default: false
    add_column :users, :address, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :is_admin, :boolean, default: false
    add_column :users, :is_packer, :boolean, default: false
    add_column :users, :is_driver, :boolean, default: false
  end
end
