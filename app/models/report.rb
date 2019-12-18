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
end
