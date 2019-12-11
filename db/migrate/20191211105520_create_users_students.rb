class CreateUsersStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :users_students do |t|
      t.integer  :user_id
      t.integer  :student_id
      t.timestamps
    end
  end
end
