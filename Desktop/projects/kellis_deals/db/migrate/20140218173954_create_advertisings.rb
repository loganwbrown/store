class CreateAdvertisings < ActiveRecord::Migration
  def change
    create_table :advertisings do |t|
      t.string :size
      t.string :imgurl

      t.timestamps
    end
  end
end
