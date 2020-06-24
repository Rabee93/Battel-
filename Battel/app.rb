require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/names' do
    @player1name = params[:"Name 1"]
    @player2name = params[:"Name 2"]
    erb(:play)
  end

  run! if app_file == $0

end
