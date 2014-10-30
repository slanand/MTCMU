class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :andrew_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :admin
      t.boolean :active

      t.timestamps
    end
  end
end
