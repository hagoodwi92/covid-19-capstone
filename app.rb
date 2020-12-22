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
  @update = covid.update
  @usDeaths = covid.us_death
  erb(:covid)
end

post ('/search') do
  search = params[:state_name]
  if search.empty?
    return 'Please enter a state.'
    erb(:search)

  elsif(search != 200)
    return 'Please enter a valid state.'
  else 
    @state = search.upcase
    covid = Covid.new(search)
    @search = covid.searchPos(search)
  end
    erb(:search)
end


get ('/back') do
  redirect '/'
end


get ('/chart') do
  covid = Covid.new(' ')
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
  erb(:chart)
end

get ('/map') do
  covid = Covid.new(' ')
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
  erb(:map)
end
