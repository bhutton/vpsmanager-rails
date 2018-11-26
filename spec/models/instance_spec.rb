require 'rails_helper'

RSpec.describe Instance, type: :model do
  it "is valid with valid attributes" do
    expect(Instance.new(name: anything)).to be_valid
  end

  it "is not valid without a name" do
    action = Instance.new(name: nil)
    expect(action).to_not be_valid
  end

  it "is valid without a description" do
    action = Instance.new(name: anything, description: nil)
    expect(action).to be_valid
  end

  it "can fill in form" do

  end
end
