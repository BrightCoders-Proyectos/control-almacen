FactoryBot.define do
  factory :admin do
    email { 'test@test.com' }
    password  { "test123" }
  end
end