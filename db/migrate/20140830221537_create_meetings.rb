class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.integer :meeting_type_id
      t.date :date
      t.string :meeting_minutes
      t.integer :classroom_semester_id

      t.timestamps
    end
  end
end
