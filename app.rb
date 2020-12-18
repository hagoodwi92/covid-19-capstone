require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/covid')
also_reload('lib/**/*.rb')


get('/') do
  covid = Covid.new(' ga')
  @al = covid.al
  @ak = covid.ak
  @az = covid.az
  @ar = covid.ar
  @ca = covid.ca
  @co = covid.co
  @ct = covid.ct
  @de = covid.de
  @fl= covid.fl
  @ga = covid.ga
  @hi = covid.hi
  @id = covid.id
  @il = covid.il
  @in = covid.in
  @ia = covid.ia
  @ks = covid.ks
  @ky = covid.ky
  @la = covid.la
  @me = covid.me
  @md = covid.md
  @ma = covid.ma
  @mi = covid.mi
  @mn = covid.mn
  @ms = covid.ms
  @mo = covid.mo
  @mt = covid.mt
  @ne = covid.ne
  @nv = covid.nv
  @nh = covid.nh
  @nj = covid.nj
  @nm = covid.nm 
  @ny = covid.ny
  @nc = covid.nc
  @nd = covid.nd
  @oh = covid.oh
  @ok = covid.ok
  @or = covid.or
  @pa = covid.pa
  @ri = covid.ri
  @sc = covid.sc
  @sd = covid.sd
  @tn = covid.tn  
  @tx = covid.tx
  @ut = covid.ut
  @vt = covid.vt
  @va = covid.va  
  @wa = covid.wa
  @wv = covid.wv
  @wi = covid.wi 
  @wy= covid.wy

  @usCases = covid.get_us
  @positives = covid.get_positives
  @update = covid.update
  @usDeaths = covid.us_death
  erb(:covid)
end

post ('/search') do

end
