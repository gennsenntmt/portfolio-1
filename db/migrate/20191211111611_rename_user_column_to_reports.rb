class RenameUserColumnToReports < ActiveRecord::Migration[5.2]
  def change
    rename_column :reports, :user, :user_id
  end
end
