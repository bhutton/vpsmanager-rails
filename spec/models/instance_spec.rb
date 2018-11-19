require 'rails_helper'

RSpec.describe Instance, type: :model do
  it "in valid with valid attributes" do
    expect(Instance.new(name: anything)).to be_valid
  end

  it "is not valid without a name" do
    action = Instance.new(name: nil)
    expect(action).to_not be_valid
  end
end
