class CreateShires < ActiveRecord::Migration
  def change
    create_table :shires do |t|

      t.timestamps
    end
  end
end
