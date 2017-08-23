require 'sinatra/base'
require 'shotgun'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    $game = Game.new
    erb :attack
  end

  run! if app_file == $PROGRAM_NAME
end
