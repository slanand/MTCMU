class CreateMeetingTypes < ActiveRecord::Migration
  def change
    create_table :meeting_types do |t|
      t.string :type
      t.integer :points

      t.timestamps
    end
  end
end
