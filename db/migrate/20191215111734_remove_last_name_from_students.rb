class RemoveLastNameFromStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :last_name, :string
  end
end
