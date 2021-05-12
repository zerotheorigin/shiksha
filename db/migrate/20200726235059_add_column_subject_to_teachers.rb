class AddColumnSubjectToTeachers < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :subject, :integer
  end
end
