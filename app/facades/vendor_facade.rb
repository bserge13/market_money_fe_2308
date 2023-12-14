class VendorFacade 
  def self.get_vendor(id)
    vendor = VerndorService.one_vendor(id)[:data]
    Vendor.new(vendor) 
  end
end