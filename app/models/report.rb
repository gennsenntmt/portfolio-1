class Report < ApplicationRecord
  belongs_to :user
  belongs_to :student

  enum subject:{
    english:          1, #英語
    math:             2, #数学
    japanese:         3, #国語
    science:          4, #理科
    social_studies:   5, #社会
  },_prefix: true

  # enum grade:{
  #   j_first_grader:          1, #中１
  #   j_second_grader:         2, #中２
  #   j_third_grader:          3, #中３
  #   first_grader:            4, #高１
  #   second_grader:           5, #高２
  #   third_grader:            6, #高３
  # },_prefix: true
end
