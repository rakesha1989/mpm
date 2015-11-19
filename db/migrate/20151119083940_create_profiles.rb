class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :d_o_b
      t.string :email
      t.string :phone
      t.string :image
      t.boolean :director
      t.string :d_i_n
      t.integer :company_id
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
