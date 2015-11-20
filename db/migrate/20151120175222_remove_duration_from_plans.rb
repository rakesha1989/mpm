class RemoveDurationFromPlans < ActiveRecord::Migration
  def change
    remove_column :plans, :duration, :string
  end
end
