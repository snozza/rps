class Game

  attr_accessor :players

  WEAPONS = {"rock" => "scissors", "paper" => "rock" , "scissors" => "paper"}

  def initialize
    @players = []
  end

  def add_player(player)
    players << player
  end

  def player_select(id)
    players.select {|player| player.object_id.inspect == id}[0]
  end

  def fight(weapon)
    comp_weapon = ["rock", "paper", "scissors"].sample
    return :draw, comp_weapon if weapon == comp_weapon
    return :win, comp_weapon if WEAPONS[weapon] == comp_weapon
    return :lose, comp_weapon
  end 

end