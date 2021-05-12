class CreateCustomFormsKannanForms < ActiveRecord::Migration[6.0]
  def change
    create_table :custom_forms_kannan_forms do |t|
      t.text :question1
      t.text :question2

      t.timestamps
    end
  end
end
