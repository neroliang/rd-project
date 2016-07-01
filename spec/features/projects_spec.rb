require 'rails_helper'

RSpec.feature "Projects", type: :feature do
  it "creates a new project" do
  	visit root_path
  	click_link 'Add a new project'
  	fill_in 'Title', with: Faker::Name.title
  	fill_in 'Description', with: Faker::Lorem.sentence
  	click_button 'Create'
  	expect(page).to have_content('has been saved')
  	# expect(current_path)
  end

  it "creates a new project" do
  	visit root_path
  	click_link 'Add a new project'
  	fill_in 'Title', with: Faker::Name.title
  	click_button 'Create'
	Capybara::Screenshot.screenshot_and_save_page
	Capybara::Screenshot.screenshot_and_open_image
  	expect(page).to have_content('Description This field is required')
	
  	# expect(current_path)
  end  
end
