class AddLessonToResource < ActiveRecord::Migration
  def change
    add_reference :resources, :lesson, index: true
  end
end
