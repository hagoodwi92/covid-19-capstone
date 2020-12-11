require('httparty')

class Covid

  def initialize(state)
    @state = 'ga'
  end

  def get_rate
    response = HTTParty.get('https://api.covidtracking.com/v1/states/' + @state +  '/current.json')
    response ['positive']
  end
end
