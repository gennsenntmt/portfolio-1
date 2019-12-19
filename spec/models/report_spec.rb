require 'rails_helper'
describe Report do
  describe '#create' do
    it "is invalid without a title" do
    end

    # 各項目入力されているかどうかのテスト
    it "is invalid without a title" do
      report = build(:report, title: nil)
      report.valid?
      expect(report.errors[:title]).to include("can't be blank")
    end

    # description
    it "is invalid without a description" do
      report = build(:report, description: nil)
      report.valid?
      expect(report.errors[:description]).to include("can't be blank")
    end

    # homework
    it "is invalid without a homework" do
      report = build(:report, homework: nil)
      report.valid?
      expect(report.errors[:homework]).to include("can't be blank")
    end

    # day
    it "is invalid without a day" do
      report = build(:report, day: nil)
      report.valid?
      expect(report.errors[:day]).to include("can't be blank")
    end

    # subject
    it "is invalid without a subject" do
      report = build(:report, subject: nil)
      report.valid?
      expect(report.errors[:subject]).to include("can't be blank")
    end

    # user_id
    it "is invalid without a user_id" do
      report = build(:report, user_id: nil)
      report.valid?
      expect(report.errors[:user_id]).to include("can't be blank")
    end

    # student_id
    it "is invalid without a student_id" do
      report = build(:report, student_id: nil)
      report.valid?
      expect(report.errors[:student_id]).to include("can't be blank")
    end

    # titleが15文字以下なら登録できる
    it "is valid with a title that has less than 15 characters " do
      report = build(:report, title: "abcdefghijklmno") # 15文字
      expect(report).to be_valid
    end

    # titleが16文字以上なら不適切
    it "is invalid with a title that has more than 16 characters" do
      report = build(:report, title: "abcdefghijklmnop") # 16文字
      report.valid?
      expect(report.errors[:title][0]).to include("is too long (maximum is 15 characters)")
    end

     # descriptionが420文字以下なら登録できる
     it "is valid with a description that has less than 420 characters " do
      report = build(:report, description: "やややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややや") # 420文字
      expect(report).to be_valid
    end

    # descriptionが421文字以上なら不適切
    it "is invalid with a description that has more than 421 characters" do
      report = build(:report, description: "ややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややや") # 421文字
      report.valid?
      expect(report.errors[:description][0]).to include("is too long (maximum is 420 characters)")
    end

     # homeworkが80文字以下なら登録できる
     it "is valid with a homework that has less than 80 characters " do
      report = build(:report, homework: "やややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややや") # 80文字
      expect(report).to be_valid
    end

    # homeworkが81文字以上なら不適切
    it "is invalid with a homework that has more than 81 characters" do
      report = build(:report, homework: "ややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややややや") # 81文字
      report.valid?
      expect(report.errors[:homework][0]).to include("is too long (maximum is 80 characters)")
    end






    
  end
end