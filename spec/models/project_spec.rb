require 'rails_helper'

RSpec.describe Project, type: :model do

  it "should fail if it has no title" do 
  	project = build(:project)
  	project.title = nil
  	expect(project.valid?).to be false
  end

  it "has description" do
  	project = build(:project)
  	project.description = nil
  	expect(project.valid?).to be false
  end
end
