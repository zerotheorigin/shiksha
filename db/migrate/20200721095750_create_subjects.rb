class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :sub_name
      t.text :syllabus
      t.date :ay_start
      t.date :ay_end
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
