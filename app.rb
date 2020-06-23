require 'sinatra'
set :session_secret, 'super secret'
get '/' do
  "Hello World"
end

get '/secret' do
  "Good bye world"
end

get '/sun' do
  "Nice weather"
end

get '/random-cat' do
  @names = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  p @names = params[:name]
  erb(:index)
  end
