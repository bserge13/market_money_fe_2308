require 'rails_helper'

RSpec.describe 'Market Index Page' do
  it 'returns a list of markets and their attributes', :vcr do
    visit '/markets' 

    expect(page).to have_content('Markets')

    within '#market_325933' do 
      expect(page).to have_content('Henry County Farmers Market')
      expect(page).to have_content('New Castle')
      expect(page).to have_content('Indiana')
      expect(page).to have_button('More Info')
    end

    within '#market_325933' do 
      click_button 'More Info'
    end
    expect(current_path).to eq(market_path(325933))
  end 
end 