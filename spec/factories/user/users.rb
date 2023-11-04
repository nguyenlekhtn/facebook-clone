FactoryBot.define do
  factory :user do
    sequence(:username) { "foo#{n}" }
    sequence(:email) { "foo#{n}@example.com" }
    password { 'foobar' }
  end
end
