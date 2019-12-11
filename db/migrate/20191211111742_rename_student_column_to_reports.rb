class RenameStudentColumnToReports < ActiveRecord::Migration[5.2]
  def change
    rename_column :reports, :student, :student_id
  end
end
