require 'rails_helper'

describe 'User edits an instance' do

  it 'should edit instance' do
    @instance = Instance.create!(:name => "test")
    # visit new_instance_url
    #
    # fill_in 'Name', with: 'My foobar'
    # click_button 'Create Instance'

    visit edit_instance_path(@instance)

    expect(page).to have_content("Name")
    fill_in 'Name', with: 'My updated foobar'
    click_button 'Update Instance'

    expect(page).to have_content("Instance Updated")
    expect(page).to have_content("My updated foobar")
  end
end