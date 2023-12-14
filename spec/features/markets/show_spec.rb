require 'rails_helper'

RSpec.describe 'Markets show page' do
  it 'Displays a single markets information', :vcr do
    visit market_path(325933)
    expect(page).to have_content('Henry County Farmers Market')
    expect(page).to have_content('100 block of S Main Street')
    expect(page).to have_content('New Castle, Indiana')
    expect(page).to have_content('47632')
  end

  it 'displays the markets vendors as links', :vcr do 
    visit market_path(325933)

    within('#vendors') do
      expect(page).to have_link('Peppermint Pleasures')
      expect(page).to have_link('Melon-drama')
      expect(page).to have_link('Roast & Toast')

      click_link('Roast & Toast')
    end
    expect(current_path).to eq(vendor_path(55391))
  end
end