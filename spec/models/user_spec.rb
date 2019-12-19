require 'rails_helper'
describe User do
  describe '#create' do
    it "is invalid without a name" do
    end

    # 各項目入力されているかどうかのテスト
    it "is invalid without a name" do
      user = build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
    end

    it "is invalid without a password" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

    # nameが10文字以下なら登録できる
    it "is valid with a name that has less than 10 characters " do
      user = build(:user, name: "abcdefghij") # 10文字
      expect(user).to be_valid
    end

    # nameが11文字以上なら不適切
    it "is invalid with a name that has more than 11 characters" do
      user = build(:user, name: "abcdefghijk") # 11文字
      user.valid?
      expect(user.errors[:name][0]).to include("is too long (maximum is 10 characters)")
    end

     # 重複したnameが存在する場合登録できないこと
     it "is invalid with a duplicate name" do
      user = build(:user)
      another_user = build(:user, name: user.name)
      another_user.valid?
      expect(another_user.errors[:name]).to include("has already been taken")
    end

    # パスワード
    # 5文字以下なら不適切
    it "is invalid with a password that has less than 5 characters " do
      user = build(:user, password: "a2345")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
    end

    # 6文字以上に設定してください
    it "is valid with a password that has more than 6 characters " do
      user = build(:user, password: "a23456") #6文字
      user.valid?
      expect(user).to be_invalid
    end

    # 30文字以内に設定してください
    it "is valid with a password that has less than 30 characters " do
      user = build(:user, password: "abcdefghijabcdefghijabcdefghij") #30文字
      user.valid?
      expect(user).to be_invalid
    end

    # 31文字以上なら不適切    
    it "is invalid with a password that has more than 31 characters " do
      user = build(:user, password: "abcdefghijabcdefghijabcdefghij1") #31文字
      user.valid?
      expect(user.errors[:password][0]).to include("is too long (maximum is 30 characters)")
    end

    # パスワードに記号を入れても登録できる
    it "is valid with a password that Contains letters and numbers and symbol " do
      user = build(:user, password: "a123456!@#$%^&*)(=_-")
      user.valid?
      expect(user).to be_invalid
    end
  end
end