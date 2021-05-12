class CreateSundarForms < ActiveRecord::Migration[6.0]
  def change
    create_table :sundar_forms do |t|
      t.string :name
      t.integer :age
      t.text :address
      t.text :profile

      t.timestamps
    end
  end
end
