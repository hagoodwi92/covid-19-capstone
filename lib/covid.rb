require('httparty')


class Covid

  def initialize(state)
    @state = 'ga'
  end

  def al
    response = HTTParty.get('https://api.covidtracking.com/v1/states/al/current.json')
    response ['deathIncrease'] 
  end
  def ak
    response = HTTParty.get('https://api.covidtracking.com/v1/states/ak/current.json')
    response ['deathIncrease'] 
  end

  def az
    response = HTTParty.get('https://api.covidtracking.com/v1/states/az/current.json')
    response ['deathIncrease'] 
  end












  def ga
    response = HTTParty.get('https://api.covidtracking.com/v1/states/ga/current.json')
    response ['deathIncrease'] 
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

  def update
    response = HTTParty.get('https://api.covidtracking.com/v1/us/current.json')
    response [0]['dateChecked']
  end
  def us_death
    response = HTTParty.get('https://api.covidtracking.com/v1/us/current.json')
    response [0]['deathIncrease'] 
  end
end

