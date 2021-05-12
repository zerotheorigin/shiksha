class AddScfColumnsToInfolet < ActiveRecord::Migration[6.0]
  def change
    add_column :infolets, :scf_name, :string
    add_column :infolets, :scf_text, :string
  end
end
