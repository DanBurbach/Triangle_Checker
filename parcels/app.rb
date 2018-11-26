require ('rubygems')
require ('sinatra')
require ('sinatra/reloader')
also_reload ('lib/**/*.rb')
require('./lib/parcels')
# require ('loc')

get ('/') do
  # require ('loc')
  @description = "this application will determine the price of your package"
  erb(:input)
end

get ('/output') do
  @length = params.fetch("length")
  @width = params.fetch("width")
  @height = params.fetch("height")
  @weight = params.fetch("weight")
  @distance = params.fetch("distance").to_i
  # @shipfrom = params.fetch("shipfrom")
  # @shipto = params.fetch("shipto")
  parcel = Parcel.new(@length, @width, @height, @weight, @distance)
  @volume = parcel.volume
  @weight = parcel.weight
  @price = parcel.price
  @distance = parcel.distance
  # @distance = parcel.shipdistance
  # @distance = @shipfrom.distance_to(@shipto)
  erb(:output)
end
