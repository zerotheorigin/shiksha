class CreateKarthickDemos < ActiveRecord::Migration[6.0]
  def change
    create_table :karthick_demos do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :skills
      t.string :interests
      t.string :hobbies

      t.timestamps
    end
  end
end
