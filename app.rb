require('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/leetspeak')
require('pry')

get('/form') do
  erb(:form)
end

get('/leetspeak') do
  @words = params.fetch("words")
  erb(:leetspeak)
end
