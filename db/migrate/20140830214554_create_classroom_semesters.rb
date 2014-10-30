class CreateClassroomSemesters < ActiveRecord::Migration
  def change
    create_table :classroom_semesters do |t|
      t.integer :classroom_id
      t.integer :teacher_id
      t.integer :year
      t.boolean :fall
      t.boolean :active

      t.timestamps
    end
  end
end
