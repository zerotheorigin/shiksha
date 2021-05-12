class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string :std
      t.string :sec
      t.references :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end
