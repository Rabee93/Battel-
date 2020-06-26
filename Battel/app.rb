require 'sinatra/base'

class Battle < Sinatra::Base
  enable 'sessions'
  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player1name = session[:player_1_name]
    @player2name = session[:player_2_name]
    @player1hp = 100
    @player2hp = 100
    erb(:play)
  end

  get '/attack' do
    @player1name = session[:player_1_name]
    @player2name = session[:player_2_name]
    erb(:attack)
  end

  run! if app_file == $0

end
