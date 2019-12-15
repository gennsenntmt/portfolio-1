class RenameJananeseColumnToStudents < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :jananese, :japanese
  end
end
