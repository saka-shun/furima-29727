require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end


  end
  it "nicknameが空だと登録できない" do
    @user.nickname = nil
    @user.valid?
    expect(@user.errors.full_messages).to include("Nickname can't be blank")
  end
  it "emailが空だと登録できない" do
    @user.email = nil
    @user.valid?
    binding.pry
    expect(@user.errors.full_messages).to include("Email can't be blank")
  end
  it "passwordが空だと登録できない" do
    @user.password = nil
    @user.valid?
    expect(@user.errors.full_messages).to include("Password can't be blank")
  end
  it "first_nameが空だと登録できない" do
    @user.first_name = nil
    @user.valid?
    expect(@user.errors.full_messages).to include("First_name can't be blank")
  end
  it "first_nameは全角でなければ登録できない" do
    @user.first_name = 'さかき'
    @user.valid?
    expect(@user.errors.full_messages).to include("First_name is invalid. Input full-width characters")
  end
  it "last_nameが空だと登録できない" do
    @user.last_name = nil
    @user.valid?
    expect(@user.errors.full_messages).to include("Last_name can't be blank")
  end
  it "last_nameは全角でなければ登録できない" do
    @user.last_name = 'しゅん'
    @user.valid?
    expect(@user.errors.full_messages).to include("Last_name is invalid. Input full-width characters")
  end
  it "first_name_kanaが空だと登録できない" do
    @user.first_name_kana = nil
    @user.valid?
    expect(@user.errors.full_messages).to include("First_name_kana can't be blank")
  end
  it "first_name_kanaは全角でなければ登録できない" do
    @user.first_name_kana = 'サカキ'
    @user.valid?
    expect(@user.errors.full_messages).to include("First_name_kana is invalid. Input full-width characters")
  end
  it "last_name_kanaが空だと登録できない" do
    @user.last_name_kana = nil
    @user.valid?
    expect(@user.errors.full_messages).to include("Last_name_kana can't be blank")
  end
  it "last_name_kanaは全角でなければ登録できない" do
    @user.last_name_kana = "シュン"
    @user.valid?
    expect(@user.errors.full_messages).to include("Last_name_kana is invalid. Input full-width characters")
  end
  it "birthday_dateが空だと登録できない" do
    @user.birthday_date = nil
    @user.valid?
    expect(@user.errors.full_messages).to include("birthday_date can't be blank")
  end
end
