require ('sinatra')
require ('sinatra/reloader')

get ('/') do
  @description = "this application will determine if the dimensions make a triangle, and if so, which kind."
  # just testing
  thing = 2 + 2
  @other_thing = thing.to_s + "ok"
  erb(:input)
end

get ('/output') do
  erb(:output)
end
