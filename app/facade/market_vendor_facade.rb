class MarketVendorFacade
  def get_market_vendors(market_id)
    @service = MarketVendorService.new
    @vendor_data = parse_json(@service.get_market_vendors(market_id))
  end

  def get_market_vendor(vendor_id)
    @service = MarketVendorService.new
    @vendor_data = parse_json(@service.get_market_vendor(vendor_id))
  end

  def parse_json(data)
    data = JSON.parse(data.body, symbolize_names: true)[:data]
    if data.count != 4
      @market_vendors = data.map do |d|
        MarketVendor.new(d)
      end
    else
      MarketVendor.new(data)
    end
  end
end