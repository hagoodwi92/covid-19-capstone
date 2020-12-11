require('httparty')

class Covid

  def initialize(state)
    @state = 'ga'
  end

  def get_rate
    response = HTTParty.get('https://api.covidtracking.com/v1/states/' + @state +  '/current.json')
    response ['death'] 
  end

  def get_state
    return @state
  end
  def get_positives
    response = HTTParty.get('https://api.covidtracking.com/v1/states/' + @state +  '/current.json')
    response ['positiveIncrease'] 
  end
  def get_us
    response = HTTParty.get('https://api.covidtracking.com/v1/us/current.json')
    response [0]['positiveIncrease'] 
  end
end
