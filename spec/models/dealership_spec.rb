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

  describe "Associations" do
    it "shuld have many cars" do
      subject {described_class.new }
      ass = described_class.reflect_on_association(:cars)
      expect(ass.macro).to eq :has_and_belongs_to_many
    end
  end
end
