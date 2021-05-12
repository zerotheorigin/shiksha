class CreateCustomFormsSundarAssign2Forms < ActiveRecord::Migration[6.0]
  def change
    create_table :custom_forms_sundar_assign_2_forms do |t|
      t.string :Q1
      t.string :Q2
      t.string :Q3
      t.string :Q4

      t.timestamps
    end
  end
end
