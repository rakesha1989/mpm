class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :suffix
      t.string :name
      t.string :cin_no
      t.string :pan_no
      t.string :service

      t.timestamps null: false
    end
  end
end
