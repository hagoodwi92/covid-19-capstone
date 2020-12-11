class Covid

  def initialize(state)
    @state = state
  end

  def get_rate
    response = HTTParty.get('https://api.covidtracking.com/v1/states/' + @state +  '/current.json')
    return response
  end
end
