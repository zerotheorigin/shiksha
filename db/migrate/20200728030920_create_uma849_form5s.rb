class CreateUma849Form5s < ActiveRecord::Migration[6.0]
  def change
    create_table :uma849_form5s do |t|
      t.string :name
      t.string :age
      t.string :sex

      t.timestamps
    end
  end
end
