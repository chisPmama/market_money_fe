class VendorsController < ApplicationController
  def show
    @facade = MarketVendorFacade.new
    @vendor = @facade.get_market_vendor(params[:id])
  end
end