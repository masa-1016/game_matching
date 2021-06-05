FactoryBot.define do
  factory :user do
    nickname {"テスト"}
    email    {"test@test.com"}
    password {"abcd1234"}
    password_confirmation {"abcd1234"}
    profile  {"よろしく"}
  end
end
