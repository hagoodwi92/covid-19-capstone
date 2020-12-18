require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/covid')
also_reload('lib/**/*.rb')


get('/') do
  covid = Covid.new(' ')
  @al = covid.al
  @ak = covid.ak
  @az = covid.az




  @ga = covid.ga
  @usCases = covid.get_us
  @state = covid.get_state
  @positives = covid.get_positives
  @update = covid.update
  @usDeaths = covid.us_death
  erb(:covid)
end