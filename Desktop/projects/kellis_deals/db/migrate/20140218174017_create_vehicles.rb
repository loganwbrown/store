class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :Make
      t.string :Model
      t.integer :Year
      t.float :Price

      t.timestamps
    end
  end
end
