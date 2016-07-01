FactoryGirl.define do
  factory :job do
    title "MyString"
    description "MyText"
	  trait :invalid do
	  	title nil
	  end

	  after(:build) do | job |
	  	project = create(:project)
	  	job.project_id = project.id
	  end
  end
end
