class Attack

  attr_reader :attacker, :attackee

  def initialize(game)
    @game = game
    if @game.player_1 == @game.current_turn
      @attacker = @game.player_1
      @attackee = @game.player_2
    else
      @attackee = @game.player_1
      @attacker = @game.player_2
    end
  end

  def attack
    @attackee.attack
    @attacker.poison_damage_done
  end

  def stun
    @attackee.stun
    @attacker.poison_damage_done
  end

  def poison
    @attackee.poison
    @attacker.poison_damage_done
  end

  def heal
    @attacker.heal
    @attacker.poison_damage_done
  end

  def poison_damage
    @attacker.poison_damage
  end

end
