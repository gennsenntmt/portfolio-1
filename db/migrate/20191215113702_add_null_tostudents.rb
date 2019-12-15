class AddNullTostudents < ActiveRecord::Migration[5.2]
  def change
    change_column_null :students, :name, false
  end
end
