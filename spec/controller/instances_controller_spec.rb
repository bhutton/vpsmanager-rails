require 'rails_helper'

RSpec.describe InstancesController, :type => :controller do
  # describe "INDEX" do
  #   it 'should display main page' do
  #     expect{index}.to contain_exactly()
  #   end
  # end
  describe "DELETE #destroy" do
    it 'should do something' do
      instance = Instance.new(id: 1, name: "test")

      expect{delete :destroy, params: { id: instance.id }}.to change(Instance, :count).by(-1)
    end
  end
end