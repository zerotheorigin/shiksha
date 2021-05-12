class CreateCustomFormsAnandYogoLists < ActiveRecord::Migration[6.0]
  def change
    create_table :custom_forms_anand_yogo_lists do |t|
      t.string :name
      t.string :age
      t.string :email
      t.string :gender
      t.string :employer
      t.date :dob

      t.timestamps
    end
    add_index :custom_forms_anand_yogo_lists, :email, unique: true
  end
end
