class AddClassroomSemesterRefToMenteeParticipation < ActiveRecord::Migration
  def change
    add_reference :mentee_participations, :classroom_semester, index: true
  end
end
