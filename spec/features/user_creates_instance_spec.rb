# spec/features/user_creates_instance_spec.rb
require 'rails_helper'


feature 'User creates an instancer' do
  scenario 'user fills in name and clicks submit' do
    visit new_instance_url

    fill_in 'Name', with: 'My foobar'
    click_button 'Create Instance'

    expect(page).to have_content("Instance Created")
    # expect(page).to have_selector("input[type=submit][value='Create Instance']")
  end
end
