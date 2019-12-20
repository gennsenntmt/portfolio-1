class AddPrincipalToReport < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :principal, :integer, default: 0
  end
end
