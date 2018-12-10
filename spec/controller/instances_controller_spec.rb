require 'rails_helper'

RSpec.describe InstancesController, :type => :controller do
  describe "DELETE #destroy" do
    it 'should delete item' do
      instance = Instance.new(id: 1, name: "test")
      instance.save

      expect{delete :destroy, params: { id: instance.id }}.to change(Instance, :count).by(-1)
    end
  end
end