class CreateGollums < ActiveRecord::Migration
  def change
    create_table :gollums do |t|

      t.timestamps
    end
  end
end
