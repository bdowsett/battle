require_relative 'player'

class Game
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end 

  def player_1
      @players[0]
  end 

  def player_2
    @players[1]
  end 

  def attack(player_name)
      player_name.reduce_health
  end 
end 
