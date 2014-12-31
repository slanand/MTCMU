class AddMenteeParticipationRefToMenteeAttendance < ActiveRecord::Migration
  def change
    add_reference :mentee_attendances, :mentee_participation, index: true
  end
end
