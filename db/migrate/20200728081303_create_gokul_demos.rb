class CreateGokulDemos < ActiveRecord::Migration[6.0]
  def change
    create_table :gokul_demos do |t|
      t.integer :employee_no
      t.string :name
      t.string :designation

      t.timestamps
    end
  end
end
