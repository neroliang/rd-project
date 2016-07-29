FactoryGirl.define do
  factory :job do
    title "MyString"
    description "MyText"
	  trait :invalid do
	  	title nil
	  end

	  after(:build) do | job |
	  	job.project = create(:project)
      job.user = create(:user)
	  end
  end
end
