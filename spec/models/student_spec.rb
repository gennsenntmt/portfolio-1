require 'rails_helper'
describe Student do
  describe '#create' do
    it "is invalid without a name" do
    end

    # 各項目入力されているかどうかのテスト
    it "is invalid without a name" do
      student = build(:student, name: nil)
      student.valid?
      expect(student.errors[:name]).to include("can't be blank")
    end

    # grade
    it "is invalid without a grade" do
      student = build(:student, grade: nil)
      student.valid?
      expect(student.errors[:grade]).to include("can't be blank")
    end

    # nameが10文字以下なら登録できる
    it "is valid with a name that has less than 10 characters " do
      student = build(:student, name: "abcdefghij") # 10文字
      expect(student).to be_valid
    end

    # nameが11文字以上なら不適切
    it "is invalid with a name that has more than 11 characters" do
      student = build(:user, name: "abcdefghijk") # 11文字
      student.valid?
      expect(student.errors[:name][0]).to include("is too long (maximum is 10 characters)")
    end




    
  end
end