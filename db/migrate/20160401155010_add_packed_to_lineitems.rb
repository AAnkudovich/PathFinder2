class AddPackedToLineitems < ActiveRecord::Migration
  def change
    add_column :lineitems, :packed, :boolean, :default => false
  end
end
