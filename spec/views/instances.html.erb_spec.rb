require 'spec_helper'

describe 'instances/index.html.erb' do

  it 'should list instances' do
    assign(:instances, [Instance.new(name: 'Test1'), Instance.new(name: 'Test2')])
    render

    rendered.should match('Instances')
    rendered.should match('Test1')
    rendered.should match('Test2')
  end
end