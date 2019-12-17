class ChangeDataDayToReport < ActiveRecord::Migration[5.2]
  def change
    change_column :reports, :day, :date
  end
end
