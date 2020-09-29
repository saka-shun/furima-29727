FactoryBot.define do
  factory :user do
    nickname        {Faker::Name.name}
    email           {Faker::Internet.email}
    password        {Faker::Internet.password}
    first_name      {'さかき'}
    last_name       {'しゅん'}
    first_name_kana {'サカキ'}
    last_name_kana  {'シュン'}
    birthday_date   {'1930-01-01'}
  end
end