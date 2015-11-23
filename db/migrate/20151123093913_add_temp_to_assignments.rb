class AddTempToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :temp, :integer
  end
end
