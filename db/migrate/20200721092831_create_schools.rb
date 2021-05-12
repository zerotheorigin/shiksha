class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :location
      t.string :city
      t.string :board
      t.string :level
      t.string :street1
      t.string :street2
      t.string :phone1
      t.string :phone2
      t.string :mobile1
      t.string :mobile2
	t.index [:name,:location,:city],unique: :true
      t.timestamps
    end
  end
end
