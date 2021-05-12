class CreateCustomFormsSanjeeviForms < ActiveRecord::Migration[6.0]
  def change
    create_table :custom_forms_sanjeevi_forms do |t|
      t.string :name
      t.string :age
      t.date :dob
      t.text :address
      t.string :phone
      t.string :email

      t.timestamps
    end
    add_index :custom_forms_sanjeevi_forms, :email, unique: true
  end
end
