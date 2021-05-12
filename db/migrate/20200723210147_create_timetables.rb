class CreateTimetables < ActiveRecord::Migration[6.0]
  def change
    create_table :timetables do |t|
      t.string :tt_day
      t.string :tt_period
      t.references :section, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
