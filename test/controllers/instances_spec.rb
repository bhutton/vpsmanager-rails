require 'rails_helper'

describe 'Instances', :type => :request do

  it 'should get index' do
    get instances_url
    assert_response :success
  end

  it 'should get new' do
    get new_instance_url
    assert_response :success
  end
end