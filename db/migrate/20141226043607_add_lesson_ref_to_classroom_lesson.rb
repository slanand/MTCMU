class AddLessonRefToClassroomLesson < ActiveRecord::Migration
  def change
    add_reference :classroom_lessons, :lesson, index: true
  end
end
