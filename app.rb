require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/volume-input-form') do
  height = (params.fetch("height")).to_i
  length = (params.fetch("length")).to_i
  width = (params.fetch("width")).to_i
  weight = (params.fetch("weight")).to_i

  @parcel = Parcel.new(height, length, width, weight).cost_to_ship()

  erb(:parcel_output)
end
