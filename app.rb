require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
