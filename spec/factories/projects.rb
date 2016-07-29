FactoryGirl.define do
  factory :project do
    title Faker::Name.title
    description Faker::Lorem.paragraph
    trait :invalid do
  	  title nil
    end

    after(:build) do | project |
      project.user = create(:user)
    end

  end
end
