require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/covid')
also_reload('lib/**/*.rb')

get('/') do
  covid = Covid.new('ga')
  @rate = covid.get_rate
  erb(:covid)
end