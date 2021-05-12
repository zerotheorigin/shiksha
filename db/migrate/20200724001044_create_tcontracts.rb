class CreateTcontracts < ActiveRecord::Migration[6.0]
  def change
    create_table :tcontracts do |t|
      t.references :subject, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
