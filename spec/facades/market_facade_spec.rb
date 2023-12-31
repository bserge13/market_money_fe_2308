require 'rails_helper'

RSpec.describe MarketFacade do
  describe '#get_markets' do
    it 'returns an array of Market objects', :vcr do
      markets = MarketFacade.get_markets

      expect(markets).to be_an Array
      expect(markets.first).to be_a Market
      expect(markets.first.name).to be_a String
      expect(markets.first.city).to be_a String
      expect(markets.first.state).to be_a String
    end 
  end 

  describe '#get_market' do 
    it 'returns a Market object', :vcr do 
      market = MarketFacade.get_market(325933)

      expect(market).to be_a Market
      expect(market.name).to be_a String
      expect(market.city).to be_a String
      expect(market.state).to be_a String
      expect(market.street).to be_a String
      expect(market.zip).to be_a String
    end
  end

  describe '#get_vendors' do
    it 'returns an array of Vendors associatated with a market', :vcr do
      vendors = MarketFacade.get_vendors(325933)

      expect(vendors).to be_an Array
      vendors.each do |vendor|
        expect(vendor).to be_a Vendor
        expect(vendor.name).to be_a String
      end 
    end
  end 
end