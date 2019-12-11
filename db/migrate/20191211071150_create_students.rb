class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string      :first_name,     null: false
      t.string      :last_name,      null: false
      t.string      :grade,          null: false
      t.boolean     :english
      t.boolean     :math
      t.boolean     :jananese
      t.boolean     :science
      t.boolean     :social_studies
      t.timestamps
    end
  end
end
