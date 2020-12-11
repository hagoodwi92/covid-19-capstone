def index
  state = State.new("ga")
  @rate = state_object.get_rate()
end