class AddMeetingRefToClassroomLesson < ActiveRecord::Migration
  def change
    add_reference :classroom_lessons, :meeting, index: true
  end
end
