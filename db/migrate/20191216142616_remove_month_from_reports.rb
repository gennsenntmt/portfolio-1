class RemoveMonthFromReports < ActiveRecord::Migration[5.2]
  def change
    remove_column :reports, :month, :integer
  end
end
