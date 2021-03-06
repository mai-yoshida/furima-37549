FactoryBot.define do
  factory :user do
    Faker::Config.locale = :ja
    email                 {Faker::Internet.free_email}
    password    { Faker::Lorem.characters(number: 6, min_alpha: 1, min_numeric: 1) }
    password_confirmation {password}
    nickname {Gimei.name }
    first_name {Gimei.name.first.kanji}
    last_name {Gimei.name.last.kanji}
    first_name_kana {Gimei.name.first.katakana}
    last_name_kana {Gimei.name.last.katakana}
    birthday { Faker::Date.backward}

  end
end