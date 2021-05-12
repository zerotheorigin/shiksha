class AddColumnsToInfolet < ActiveRecord::Migration[6.0]
  def change
    add_reference :infolets, :school, null: true, foreign_key: true
  end
end
