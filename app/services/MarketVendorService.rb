class MarketVendorService

  def conn
    conn = Faraday.new(url: "http://localhost:3000")
  end

  def get_market_vendors(market_id)
    response = conn.get("/api/v0/markets/#{market_id}/vendors")
  end
end