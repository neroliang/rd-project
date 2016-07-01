FactoryGirl.define do
  factory :project do
    title Faker::Name.title
    description Faker::Lorem.paragraph
  end

  trait :invalid do
  	title nil
  end
end
