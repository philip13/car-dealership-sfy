require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the CarsHelper. For example:
#
# describe CarsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe CarsHelper, type: :helper do
  describe "#get_price_deprecate" do
    it "Deprecate Price one month is equal 2%" do
      today = "2022-11-08".to_date
      entry_date = "2022-09-28".to_date
      price = 80000.0
  
      expect(helper.get_price_deprecate(price, entry_date, today)).to eq(78400)
    end

    it "Deprecate price is less one month and deprecated_price is equal to price" do
      today = "2022-11-08".to_date
      entry_date = "2022-11-01".to_date
      price = 80000.0
  
      expect(helper.get_price_deprecate(price, entry_date, today)).to eq(80000)
    end
  end
end
