class CreateCustomFormsTamilForms < ActiveRecord::Migration[6.0]
  def change
    create_table :custom_forms_tamil_forms do |t|
      t.string :name
      t.string :email
      t.date :dob
      t.string :place
      t.string :district
      t.string :pincode

      t.timestamps
    end
  end
end
