class MarketService

  def conn
    conn = Faraday.new(url: "http://localhost:3000")
  end

  def get_markets
    response = conn.get("/api/v0/markets")
  end
end