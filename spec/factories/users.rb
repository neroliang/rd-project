FactoryGirl.define do
  factory :user do
    name { Faker::Name.title }
    email { Faker::Internet.email }
    password "foobaz"
    password_confirmation "foobaz"
  end
end
