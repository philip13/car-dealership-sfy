require 'rails_helper'

RSpec.describe Car, type: :model do
  it "has a valid factory" do
    expect(build(:car)).to be_valid
  end

  let(:factory_instance) { build(:car) }
  
  describe "ActiveModel validations" do
    it "is not valid without brand" do
      expect( build(:car, {brand: nil}) ).not_to be_valid
    end

    it "is not valid without price" do
      expect( build(:car, {price: nil}) ).not_to be_valid
    end

    it "is not valid without condition" do
      expect( build(:car, {condition: nil}) ).not_to be_valid
    end

    it "is not valid without entry_date" do
      expect( build(:car, {entry_date: nil}) ).not_to be_valid
    end
  end

  describe "Associations" do
    it "should have many dealerships" do
      subject { discribed_class.new }
      ass = described_class.reflect_on_association(:dealerships)
      expect(ass.macro).to eq :has_and_belongs_to_many
    end
  end
end
