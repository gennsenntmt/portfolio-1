class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string      :title,           null: false    
      t.text        :description,     null: false
      t.text        :homework,        null: false
      t.integer     :month,           null: false
      t.integer     :day,             null: false
      t.integer     :subject,         null: false
      t.text        :other
      t.references  :user,            foreign_key: true
      t.reference   :student,         foreign_key: true
      t.timestamps
    end
  end
end
