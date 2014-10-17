require_relative 'game'
require_relative 'player'
require 'sinatra/base'
require 'rack-flash'

class RockPaperScissors < Sinatra::Base

  GAME = Game.new

  enable :sessions
  use Rack::Flash, :sweep => true
  set :session_secret, "super secret"
  set :views, Proc.new {File.join(root, '..', "views")}
  set :public_dir, Proc.new {File.join(root, '..', "public")}


  get '/' do
    erb :index
  end

  get '/begin' do
    erb :begin
  end

  post '/begin' do
    session[:player] = params[:player]
    player = Player.new(player)
    add_player(player)
    add_player(Player.new("Skynet"))
    session[:id] = player.object_id
    redirect '/play'
  end

  get '/play' do
    @name = session[:player]
    erb :play
  end

  post '/play' do
    player = get_player(session[:id])
    session[:weapon] = params[:weapon]
    result, comp_weapon = battle(params[:weapon])
    session[:result] = result
    session[:comp_weapon] = comp_weapon
    redirect '/result'
  end

  get '/result' do
    @result = session[:result]
    @comp_weapon = session[:comp_weapon]
    @weapon = session[:weapon]
    erb :result
  end


  def add_player(player)
    GAME.add_player(player)
  end

  def get_player(id)
    GAME.player_select(id)
  end

  def battle(weapon)
    GAME.fight(weapon)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
