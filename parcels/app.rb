require ('rubygems')
require ('sinatra')
require ('sinatra/reloader')
also_reload ('lib/**/*.rb')
require('./lib/parcels')
require('./gems/2.5.0/gems/loc-0.1.0/lib/loc')
# require('loc')

get ('/') do
  # require ('loc')
  @description = "this application will determine the price of your package"
  erb(:input)
end

get ('/output') do
  require('./gems/2.5.0/gems/loc-0.1.0/lib/loc')
  @length = params.fetch("length")
  @width = params.fetch("width")
  @height = params.fetch("height")
  @weight = params.fetch("weight")
  # @distance = params.fetch("distance").to_i



  @shipfrom = Loc::Location[40.7, -73.9]
  @shipto = Loc::Location[45.5, -122.6]

  parcel = Parcel.new(@length, @width, @height, @weight, @shipfrom, @shipto, @distance)
  @volume = parcel.volume
  @weight = parcel.weight
  @price = parcel.price
  # @distance = parcel.distance
  # @distance = parcel.shipdistance
  @distance = @shipfrom.distance_to(@shipto)
  erb(:output)
end
