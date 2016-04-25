class CreateVans < ActiveRecord::Migration
  def change
    create_table :vans do |t|
      t.string :regPlate
      t.integer :driverID

      t.timestamps null: false
    end
  end
end
