class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.integer :school_id
      t.string :classroom_number
      t.boolean :active

      t.timestamps
    end
  end
end
