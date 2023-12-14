require 'rails_helper'

RSpec.describe MarketService do
  describe 'class methods' do
    it '#all_markets returns all markets', :vcr do
      response = MarketService.all_markets

      expect(response).to be_a Hash 
      expect(response[:data]).to be_an Array 
      response[:data].each do |market|
        expect(market).to have_key :attributes 
        expect(market[:attributes]).to be_a Hash
        expect(market[:attributes]).to have_key :name
        expect(market[:attributes][:name]).to be_a String
        expect(market[:attributes]).to have_key :city
        expect(market[:attributes]).to have_key :state
        expect(market[:attributes][:state]).to be_a String
      end 
    end

    it '#one_market returns a single market', :vcr do
      response = MarketService.one_market(325933)

      expect(response).to be_a Hash
      expect(response[:data][:attributes][:name]).to eq('Henry County Farmers Market')
      expect(response[:data][:attributes][:city]).to eq('New Castle')
      expect(response[:data][:attributes][:state]).to eq('Indiana')
      expect(response[:data][:attributes][:street]).to eq('100 block of S Main Street')
      expect(response[:data][:attributes][:zip]).to eq('47632')
    end

    it '#market_vendors returns all vendors for a market', :vcr do
      response = MarketService.market_vendors(325933)

      expect(response).to be_a Hash
      expect(response[:data]).to be_an Array
      response[:data].each do |vendor|
        expect(vendor[:attributes]).to have_key :name
        expect(vendor[:attributes][:name]).to be_a String
      end 
    end 
  end
end