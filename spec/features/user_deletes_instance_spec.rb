require 'rails_helper'

describe 'User Deletes Instance' do

  it 'should delete instance' do
    @instance = Instance.create(:name => "test")

    # get :index
    # visit instance_url.destroy(1)
  end
end