class RemovePlanIdFromAssignments < ActiveRecord::Migration
  def change
    remove_column :assignments, :plan_id, :integer
  end
end
