require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/covid')
also_reload('lib/**/*.rb')


get('/') do
  covid = Covid.new('ga')
  @usCases = covid.get_us
  @deaths = covid.get_rate
  @state = covid.get_state
  @positives = covid.get_positives
  erb(:covid)
end