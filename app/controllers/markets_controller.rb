class MarketsController < ApplicationController
  def index
    # Sending the lat and lon properties to the API
    conn = Faraday.new(url: "http://localhost:3000")

    ## Service
    # def get_markets
    response = conn.get("/api/v0/markets")
    # end


    data = JSON.parse(response.body, symbolize_names: true)[:data]
    markets = data.map do |d|
      Market.new(d)
    end

    # Market Instance that can be grabbed including the ID, lat, and lon
    binding.pry
    markets = Market.all
  end
end