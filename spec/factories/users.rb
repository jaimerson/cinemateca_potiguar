FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "johndoe#{n}@example.org" }
    password { 'password' }
  end
end
