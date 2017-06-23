
class Game
  attr_reader :player1, :player2

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack(player)
    player.reduce_hp
  end

  def game_over?
    @player1.health.zero? || @player2.health.zero?
  end
end
