FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "foo#{n}" }
    sequence(:email) { |n| "foo#{n}@example.com" }
    password { 'foobar' }
  end
end
