class Market
  attr_reader :id, :name, :street, :city, :county, :state, :zip, :lat, :lon

  def initialize(data)
    @id = data[:id]

    data = data[:attributes]

    @name = data[:name]
    @street = data[:street]
    @city = data[:city]
    @county = data[:county]
    @state = data[:state]
    @zip = data[:zip]
    @lat = data[:lat]
    @lon = data[:lon]
  end

end