class CreateSridharForms < ActiveRecord::Migration[6.0]
  def change
    create_table :sridhar_forms do |t|
      t.string :name
      t.string :age
      t.string :sex
      t.date :dob
      t.date :doj
      t.string :designation
      t.string :employer

      t.timestamps
    end
  end
end
