class CreateWingEmployees < ActiveRecord::Migration
  def change
    create_table :wing_employees do |t|
      t.integer :wing_id
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
