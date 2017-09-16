class Game

  attr_reader :player_1, :player_2, :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def not_current_turn
    opponent_of(current_turn)
  end

  def switch_turns
    @current_turn = not_current_turn
  end

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

end
