require ('sinatra')
require ('sinatra/reloader')
also_reload ('lib/**/*.rb')
require('./lib/parcels')

get ('/') do
  @description = "this application will determine the price of your package"
  erb(:input)
end

get ('/output') do
  @length = params.fetch("length")
  @width = params.fetch("width")
  @height = params.fetch("height")
  @weight = params.fetch("weight")
  parcel = Parcel.new(@length, @width, @height, @weight)
  @volume = parcel.volume
  @weight = parcel.weight
  erb(:output)
end
