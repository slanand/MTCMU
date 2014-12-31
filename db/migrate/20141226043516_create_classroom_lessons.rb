class CreateClassroomLessons < ActiveRecord::Migration
  def change
    create_table :classroom_lessons do |t|

      t.timestamps
    end
  end
end
