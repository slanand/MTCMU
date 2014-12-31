class AddMenteeRefToMenteeParticipation < ActiveRecord::Migration
  def change
    add_reference :mentee_participations, :mentee, index: true
  end
end
