FactoryBot.define do
  factory :user do
    email { 'test@test.com' }
    password  { "test123" }
  end
end