class AddIndexToStudents < ActiveRecord::Migration[5.2]
  def change
    add_index :students, :name, :unique => true
  end
end
