class AddTcontractToInfolet < ActiveRecord::Migration[6.0]
  def change
    add_reference :infolets, :tcontract, null: true, foreign_key: true
  end
end
