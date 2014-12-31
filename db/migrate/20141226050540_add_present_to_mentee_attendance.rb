class AddPresentToMenteeAttendance < ActiveRecord::Migration
  def change
    add_column :mentee_attendances, :present, :boolean
  end
end
