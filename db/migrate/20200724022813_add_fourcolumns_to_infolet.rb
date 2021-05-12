class AddFourcolumnsToInfolet < ActiveRecord::Migration[6.0]
  def change
    add_reference :infolets, :subject, null: true, foreign_key: true
    add_reference :infolets, :section, null: true, foreign_key: true
  end
end
