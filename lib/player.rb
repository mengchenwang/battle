class Player

  DEFAULT_HIT_POINTS = 60

  attr_reader :name, :hitpoint, :damage

  def initialize(name, hitpoint = DEFAULT_HIT_POINTS)
    @name = name
    @hitpoint = hitpoint
    @poisoned = false
    @poison_damage_done = false
  end

  def receive_damage
    @hitpoint -= @damage
  end

  def attack
    @damage = rand(5..15)
    receive_damage
  end

  def stun
    @damage = rand(3..10)
    receive_damage
  end

  def poison
    @damage = rand(1..3)
    @poisoned = true
    receive_damage
  end

  def heal
    @damage = rand(-10..-5)
    receive_damage
  end

  def poisoned?
    @poisoned
  end

  def poison_damage
    @damage = rand(1..3)
    receive_damage
    @poison_damage_done = true
  end

  def poison_damage_done
    @poison_damage_done = false
  end

  def poison_damage_done?
    @poison_damage_done
  end

end
