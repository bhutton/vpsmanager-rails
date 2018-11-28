# spec/features/user_creates_instance_spec.rb
require 'rails_helper'


feature 'User creates an instancer' do
  scenario 'user fills in name then clicks submit' do
    visit new_instance_url

    fill_in 'Name', with: 'My foobar'
    click_button 'Create Instance'

    expect(page).to have_content("Instance Created")
    expect(page).to have_content("My foobar")
  end

  scenario 'user fills in name and subscription then clicks submit' do
    visit new_instance_url

    fill_in 'Name', with: 'My foobar'
    fill_in 'Description', with: 'my description'
    click_button 'Create Instance'

    expect(page).to have_content("Instance Created")
  end
end
