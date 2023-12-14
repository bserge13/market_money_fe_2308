require 'rails_helper'

RSpec.describe VendorFacade do
  describe '#get_vendor' do
    it 'returns a Vendor object', :vcr do 
      vendor = VendorFacade.get_vendor(55391)

      expect(vendor).to be_a Vendor
      expect(vendor.name).to be_a String
      expect(vendor.description).to be_a String
      expect(vendor.contact_name).to be_a String
      expect(vendor.contact_phone).to be_a String
      expect(vendor.credit_accepted).to be_in([true, false])
    end
  end
end