class CreateCustomFormsAdmissionForms < ActiveRecord::Migration[6.0]
  def change
    create_table :custom_forms_admission_forms do |t|
      t.string :name
      t.string :fathers_name
      t.string :age
      t.string :gender
      t.date :dob
      t.text :address
      t.string :phone_no

      t.timestamps
    end
  end
end
