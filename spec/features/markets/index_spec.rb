require 'rails_helper'

RSpec.describe 'Market Search' do
  describe '#index' do
    it 'returns a list of markets' do
      visit markets_path 

      expect(page).to have_content('Markets')
      expect(page.status_code).to eq 200

    end
  end 
end 