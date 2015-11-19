class AddWingIdToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :wing_id, :integer
  end
end
