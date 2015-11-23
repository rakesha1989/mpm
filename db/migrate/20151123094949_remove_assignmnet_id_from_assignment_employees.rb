class RemoveAssignmnetIdFromAssignmentEmployees < ActiveRecord::Migration
  def change
    remove_column :assignment_employees, :assignmnet_id, :integer
  end
end
