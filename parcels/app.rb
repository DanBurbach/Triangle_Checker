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
  # @distance = parcel.distance
  # @distance = parcel.shipdistance
  @distance = ((@shipfrom.distance_to(@shipto))/1609.344).floor
  parcel.distance = @distance
  @price =  @volume.to_i * @weight.to_i * (0.01*(@distance))
  erb(:output)
  
end
