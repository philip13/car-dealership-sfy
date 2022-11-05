require 'rails_helper'

RSpec.describe Dealership, type: :model do
  it "has a valid factory" do
    expect(build(:dealership)).to be_valid
  end

  let(:factory_instance) {buil(:dealership) }

  describe "ActiveModel validations" do
    it "is not valid without name" do
      expect(build(:dealership, {name: nil})).not_to be_valid
    end
    it "is not valid without address" do
      expect(build(:dealership, {address: nil})).not_to be_valid
    end
    it "is not valid without country" do
      expect(build(:dealership, {country: nil})).not_to be_valid
    end

  end
end