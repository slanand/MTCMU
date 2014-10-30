class CreateMemberAssignments < ActiveRecord::Migration
  def change
    create_table :member_assignments do |t|
      t.integer :member_id
      t.integer :classroom_semester_id
      t.string :role

      t.timestamps
    end
  end
end
