class CreateWings < ActiveRecord::Migration
  def change
    create_table :wings do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
