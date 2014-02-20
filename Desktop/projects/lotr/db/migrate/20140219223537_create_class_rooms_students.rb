class CreateClassRoomsStudents < ActiveRecord::Migration
  def change
    create_table :class_rooms_students, id: false do |t|
      t.belongs_to :class_room
      t.belongs_to :student
    end
  end
end
