class AddNameToResource < ActiveRecord::Migration
  def change
    add_column :resources, :name, :string
  end
end
