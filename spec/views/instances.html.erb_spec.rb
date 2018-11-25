require 'spec_helper'

describe 'instances/index.html.erb' do

  it 'should list instances' do
    assign(:instances, Instance.create(name: 'Test'))
    render

    rendered.should match('Instances')
    rendered.should match('Test')
  end
end