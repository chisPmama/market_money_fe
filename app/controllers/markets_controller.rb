class MarketsController < ApplicationController
  def index
    @facade = MarketFacade.new
    @markets = @facade.get_markets
  end

  def show
   @market = index.find{|market| market.id == params[:id]}
   @facade = MarketVendorFacade.new
   @vendors = @facade.get_market_vendors(params[:id])
  end
end