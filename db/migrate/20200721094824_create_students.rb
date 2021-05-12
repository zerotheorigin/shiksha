class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.date :DOB
      t.date :DOJS
      t.string :admission_no
      t.string :exam_reg_no
      t.string :gender
      t.string :street1
      t.string :street2
      t.string :location
      t.string :city
      t.string :pincode
      t.string :father_name
      t.string :mother_name
      t.string :father_occupation
      t.string :mother_occupation
      t.string :father_qualification
      t.string :mother_qualification
      t.string :parent_work_street1
      t.string :parent_work_street2
      t.string :parent_work_location
      t.string :parent_work_city
      t.string :parent_work_pincode
      t.string :father_mobile1
      t.string :father_mobile2
      t.string :father_work_ph
      t.string :mother_mobile1
      t.string :mother_mobile2
      t.string :mother_work_ph
      t.string :sibling1
      t.string :sibling2
      t.references :section, null: true, foreign_key: true

      t.timestamps
    end
  end
end
