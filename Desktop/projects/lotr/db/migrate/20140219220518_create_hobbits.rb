class CreateHobbits < ActiveRecord::Migration
  def change
    create_table :hobbits do |t|
      t.integer :shire_id
      t.timestamps
    end

    add_index :hobbits, :shire_id
  end
end
