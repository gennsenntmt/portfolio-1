class ChangeDataGradeToStudent < ActiveRecord::Migration[5.2]
  def change
    change_column :students, :grade, :integer
  end
end
