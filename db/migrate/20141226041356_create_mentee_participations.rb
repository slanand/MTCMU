class CreateMenteeParticipations < ActiveRecord::Migration
  def change
    create_table :mentee_participations do |t|

      t.timestamps
    end
  end
end
