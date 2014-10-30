class CreateExcuses < ActiveRecord::Migration
  def change
    create_table :excuses do |t|
      t.string :name
      t.string :reason

      t.timestamps
    end
  end
end
