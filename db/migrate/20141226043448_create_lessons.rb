class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :overview
      t.string :lesson_plan
      t.string :presentation

      t.timestamps
    end
  end
end
