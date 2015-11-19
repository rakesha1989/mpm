class CreateMeetingEmployees < ActiveRecord::Migration
  def change
    create_table :meeting_employees do |t|
      t.integer :meeting_id
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
