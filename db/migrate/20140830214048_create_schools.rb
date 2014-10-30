class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :street_1
      t.string :street_2
      t.boolean :active

      t.timestamps
    end
  end
end
