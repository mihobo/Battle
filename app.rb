# app.rb
require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:Player_1])
    player2 = Player.new(params[:Player_2])
    @game = Game.create(player1, player2)
    redirect to '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack1' do
    erb(:attack)
  end

  get '/attack2' do
    erb(:attack)
  end

  get '/gameover' do
    erb(:gameover)
  end

  run! if app_file == $PROGRAM_NAME
end
