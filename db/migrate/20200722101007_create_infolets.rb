class CreateInfolets < ActiveRecord::Migration[6.0]
  def change
    create_table :infolets do |t|
      t.references :student, null: true, foreign_key: true
      t.references :teacher, null: true, foreign_key: true

      t.timestamps
    end
  end
end
