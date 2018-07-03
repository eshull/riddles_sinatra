require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/riddles')
require('pry')

get ('/')do
  erb(:input)
end
# post ('/output')do
#   @riddle_one = params.fetch("answer_one")
#   riddle = Riddle.new(@riddle_one)
#   @riddle_output = riddle.riddle_method()
#   erb(:output)
# end
post ('/output')do
  @riddle_one = params.fetch("answer_one")
  riddle = Riddle.new(@riddle_one)
  @riddle_output = riddle.riddle_method()

  if @riddle_one == "sleep"
    get('/views/success') do
      @riddle_output
      # @riddle_display = Riddle.find(params[:id])
        erb(:success)
      end
    else
        get('/failure') do
        @riddle_output
      erb(:failure)
      end
  end
end



# riddle = Riddle.new(@riddle_one, @riddle_two)


#franz
# get ('/riddles/:id')
#   id = params.fetch(:id)
#   @riddle = Riddle.find(id)
#   erb(:riddle)
# end
