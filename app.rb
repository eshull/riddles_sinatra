require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/riddles')
require('pry')

get ('/')do

  erb(:input)
end
post ('/output')do
  @riddle_one = params.fetch("answer_one")
  @riddle_two = params.fetch("answer_two")

riddle = Riddle.new(@riddle_one, @riddle_two)
  @riddle_output = riddle.riddle_method()
  erb(:output)
end
