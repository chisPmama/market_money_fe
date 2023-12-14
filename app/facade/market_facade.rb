class MarketFacade
  def get_markets
    @service = MarketService.new
    @market_data = parse_json(@service.get_markets)
  end

  def parse_json(data)
    data = JSON.parse(data.body, symbolize_names: true)[:data]
    @markets = data.map do |d|
      Market.new(d)
    end
  end

end