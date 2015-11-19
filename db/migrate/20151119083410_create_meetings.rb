class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.date :month
      t.date :date
      t.string :category
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
