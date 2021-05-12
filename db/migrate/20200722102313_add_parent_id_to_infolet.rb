class AddParentIdToInfolet < ActiveRecord::Migration[6.0]
  def change
    add_column :infolets, :parent_id, :integer
    add_index :infolets, :parent_id
  end
end
