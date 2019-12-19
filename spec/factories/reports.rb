FactoryBot.define do

  factory :report do
    title                  {"評論文"}
    description            {"源氏物語"}
    homework               {"問題集P18~P26"}
    day                    {2019-12-12}
    subject                {1}
    user_id                {1}
    student_id             {1}
  end

end