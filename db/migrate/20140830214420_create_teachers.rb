class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.boolean :partner
      t.integer :school_id
      t.boolean :active

      t.timestamps
    end
  end
end
