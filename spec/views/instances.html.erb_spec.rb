require 'spec_helper'

describe 'instances/index.html.erb' do

  it 'should list single instance' do
    assign(:instances, Instance.new(id: 1, name: 'Test1'))
    render

    rendered.should match('Instances')
    rendered.should match('Test1')
  end

  it 'should list instances' do
    assign(:instances, [Instance.new(id: 1, name: 'Test1'), Instance.new(id: 1, name: 'Test2')])
    render

    rendered.should match('Instances')
    rendered.should match('Test1')
    rendered.should match('Test2')
  end
end