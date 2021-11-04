class Player
    attr_reader :name, :hp
    DEFAULT_HP = 60
  
    def initialize(name, hp = DEFAULT_HP)
      @name = name
      @hp = hp
    end

    def attack(player_name)
      player_name.reduce_health
    end 

    def reduce_health
      @hp -= 10
    end
  end