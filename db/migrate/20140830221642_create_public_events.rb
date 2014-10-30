class CreatePublicEvents < ActiveRecord::Migration
  def change
    create_table :public_events do |t|
      t.string :name
      t.string :description
      t.date :start_date
      t.date :end_date
      t.time :time
      t.integer :meeting_type_id
      t.string :flyer

      t.timestamps
    end
  end
end
