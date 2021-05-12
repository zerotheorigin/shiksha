class RemoveColumnFromInfolet < ActiveRecord::Migration[6.0]
  def change
    remove_column :infolets, :content, :text
  end
end
