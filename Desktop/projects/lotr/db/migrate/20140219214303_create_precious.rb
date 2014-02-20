class CreatePrecious < ActiveRecord::Migration
  def change
    create_table :precious do |t|
      #This specifies the foreign key
      t.integer :gollum_id
      t.timestamps
    end

    add_index :precious, :gollum_id
  end
end
