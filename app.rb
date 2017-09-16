require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/attack'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    if (@game.current_turn.poisoned?) && ((@game.current_turn.poison_damage_done?) == false)
      redirect('/poisoned')
    end
    erb :play
  end

  get '/poisoned' do
    @attack = Attack.new(@game)
    @attack.poison_damage
    erb :poisoned
  end

  get '/attack' do
    @attack = Attack.new(@game)
    @attack.attack
    erb :attack
  end

  get '/stun' do
    @attack = Attack.new(@game)
    @attack.stun
    erb :stun
  end

  get '/poison' do
    @attack = Attack.new(@game)
    @attack.poison
    erb :poison
  end

  get '/heal' do
    @attack = Attack.new(@game)
    @attack.heal
    erb :heal
  end

  post '/post_office' do
    page = params[:page]
    redirect(page)
  end

  get '/switch-turns' do
    @game.switch_turns
    redirect('/play')
  end

  get '/game-over' do
    erb :game_over
  end

  run! if app_file == $0
end
