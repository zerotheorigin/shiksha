class AddRoleToInfolet < ActiveRecord::Migration[6.0]
  def change
    add_column :infolets, :role, :string
  end
end
