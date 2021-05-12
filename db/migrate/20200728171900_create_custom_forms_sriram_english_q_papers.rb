class CreateCustomFormsSriramEnglishQPapers < ActiveRecord::Migration[6.0]
  def change
    create_table :custom_forms_sriram_english_q_papers do |t|
      t.text :Q1
      t.text :Q2
      t.text :Q3

      t.timestamps
    end
  end
end
