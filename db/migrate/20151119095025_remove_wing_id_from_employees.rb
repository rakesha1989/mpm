class RemoveWingIdFromEmployees < ActiveRecord::Migration
  def change
    remove_column :employees, :wing_id, :integer
  end
end
