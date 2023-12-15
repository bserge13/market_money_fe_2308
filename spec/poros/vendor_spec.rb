require 'rails_helper'

RSpec.describe Vendor do 
  describe 'initialize' do 
    it 'exists with attributes' do 
      vendor_data = {
        "id": "55391",
        "type": "vendor",
        "attributes": {
          "name": "Roast & Toast",
          "description": "Freshly roasted nuts and coffee blends",
          "contact_name": "Bryan Wolff",
          "contact_phone": "1-176-664-1200",
          "credit_accepted": "true"
        }
      }

      vendor = Vendor.new(vendor_data)

      expect(vendor).to be_a Vendor
      expect(vendor.id).to eq("55391")
      expect(vendor.name).to eq("Roast & Toast")
      expect(vendor.description).to eq("Freshly roasted nuts and coffee blends")
      expect(vendor.contact_name).to eq("Bryan Wolff")
      expect(vendor.contact_phone).to eq("1-176-664-1200")
      expect(vendor.credit_accepted).to eq("true")
    end 
  end 
end 
