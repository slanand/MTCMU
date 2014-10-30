class CreateMeetingAttendances < ActiveRecord::Migration
  def change
    create_table :meeting_attendances do |t|
      t.integer :member_id
      t.integer :meeting_id
      t.boolean :present
      t.integer :excuse_id

      t.timestamps
    end
  end
end
