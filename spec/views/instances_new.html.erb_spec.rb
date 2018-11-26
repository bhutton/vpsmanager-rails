require 'spec_helper'

describe 'instances/new.html.erb' do

  it 'should display new form' do
    render

    rendered.should match('Create new instance')
    rendered.should match('Name')
    rendered.should have_selector('form')
    rendered.should have_field("name", :type => 'text')
    rendered.should have_field("description", :type => 'text')
    rendered.should have_selector("input[type=submit][value='Submit']")

  end
end