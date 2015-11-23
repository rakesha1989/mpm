class ChangeAssignmnetIdFromAssignmentEmployees < ActiveRecord::Migration
  def change
  	remove_column :assignment_employees, :assignmnet

    add_column :assignment_employees, :assignment_id, :integer
  end
end
