class Student < ApplicationRecord
  has_many :reports
  has_many :users_studens
  has_many :users, through: :users_studens
end
