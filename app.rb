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
    # @game = Game.instance
    # @player1_name = $game.player1.player_name
    # @player2_name = $game.player2.player_name
    # @p1_health = $game.player1.health
    # @p2_health = $game.player2.health
    # @game_over = $game.game_over?
    erb(:play)
  end

  get '/attack1' do
    # @player1_name = $game.player1.player_name
    # @player2_name = $game.player2.player_name
    # @p1_attack = $game.attack($game.player1)
    # @p1_health = $game.player1.health
    erb(:attack)
  end

  get '/attack2' do
    # @player1_name = $game.player1.player_name
    # @player2_name = $game.player2.player_name
    # @p2_attack = $game.attack($game.player2)
    # @p2_health = $game.player2.health
    erb(:attack)
  end

  get '/gameover' do
    erb(:gameover)
  end

  run! if app_file == $PROGRAM_NAME
end
