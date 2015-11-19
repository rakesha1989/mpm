class CreateAssignmentEmployees < ActiveRecord::Migration
  def change
    create_table :assignment_employees do |t|
      t.integer :assignmnet_id
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
