class VendorsController < ApplicationController
  def show 
    @vendor = VenderFacade.get_vendor(params[:id])
  end
end