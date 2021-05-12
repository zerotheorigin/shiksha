class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.date :DOB
      t.date :DOJS
      t.string :staff_no
      t.string :gender
      t.string :street1
      t.string :street2
      t.string :location
      t.string :city
      t.string :pincode
      t.string :qualification
      t.string :family_work_street1
      t.string :family_work_street2
      t.string :family_work_location
      t.string :family_work_city
      t.string :family_work_pincode
      t.string :family_mobile1
      t.string :family_mobile2
      t.string :family_work_ph
      t.string :class_teacher
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
