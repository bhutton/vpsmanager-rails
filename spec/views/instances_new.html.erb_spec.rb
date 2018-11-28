require 'spec_helper'

describe 'instances/new.html.erb' do

  it 'should display new form' do
    assign(:instances, Instance.new(name: 'Test1'))
    render

    rendered.should match('Create new instance')
    rendered.should match('Name')
    rendered.should have_selector("form[method='post']")
    rendered.should have_field("instance[name]", :type => 'text')
    rendered.should have_field("instance[description]", :type => 'text')
    rendered.should have_selector("input[type=submit][value='Create Instance']")
  end

end