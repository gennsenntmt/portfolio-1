class RenameFirstnameColumnToStudents < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :first_name, :name
  end
end
