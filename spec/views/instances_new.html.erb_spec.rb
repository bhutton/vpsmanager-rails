require 'spec_helper'

describe 'instances/new.html.erb' do

  it 'should display new form' do
    render

    rendered.should match('Create new instance')
    rendered.should match('Name')
    rendered.should have_selector("form[name=instance][method='POST']")
    rendered.should have_field("name", :type => 'text')
    rendered.should have_field("description", :type => 'text')
    rendered.should have_selector("input[type=submit][value='Submit']")
  end

  it 'should submit new form' do
    render

    rendered.should submit_tag
  end
end