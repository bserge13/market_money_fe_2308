require 'rails_helper'

RSpec.describe Market do 
  describe 'initialize' do 
    it 'exists with attributes' do 
      market_data = {
        "id": "325933",
        "type": "market",
        "attributes": {
          "name": "Henry County Farmers Market",
          "street": "100 block of S Main Street",
          "city": "New Castle",
          "state": "Indiana",
          "zip": "47632"
        }
      }

      market = Market.new(market_data)

      expect(market).to be_a Market
      expect(market.id).to eq("325933")
      expect(market.name).to eq("Henry County Farmers Market")
      expect(market.city).to eq("New Castle")
      expect(market.state).to eq("Indiana")
      expect(market.street).to eq("100 block of S Main Street")
      expect(market.zip).to eq("47632")
    end
  end
end