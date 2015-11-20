class AddPlanMonthToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :plan_month, :string
  end
end
