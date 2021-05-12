class CreateCustomFormsSundarForm2s < ActiveRecord::Migration[6.0]
  def change
    create_table :custom_forms_sundar_form2s do |t|
      t.string :name
      t.string :age
      t.string :email

      t.timestamps
    end
  end
end
