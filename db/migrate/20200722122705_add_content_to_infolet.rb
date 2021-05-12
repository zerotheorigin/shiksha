class AddContentToInfolet < ActiveRecord::Migration[6.0]
  def change
    add_column :infolets, :content, :text
  end
end
