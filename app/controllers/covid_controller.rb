def index
  @rate = Covid.get_rate
  render :covid
end