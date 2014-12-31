class CreateMenteeAttendances < ActiveRecord::Migration
  def change
    create_table :mentee_attendances do |t|

      t.timestamps
    end
  end
end
