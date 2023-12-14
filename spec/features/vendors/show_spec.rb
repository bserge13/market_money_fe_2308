require 'rails_helper'

RSpec.describe 'Vendors show page' do
  it 'Displays a single vendor and their attributes', :vcr do
    visit vendor_path(55391)

    expect(page).to have_content('Roast & Toast')
    expect(page).to have_content('Contact Info:')
    expect(page).to have_content('Name: Bryan Wolff')
    expect(page).to have_content('Phone: 1-176-664-1200')
    expect(page).to have_content('Credit Accepted?: YES')
    expect(page).to have_content('Description: Freshly roasted nuts and coffee blends')
  end
end