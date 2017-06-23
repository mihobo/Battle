require 'game'
require 'player'

describe Game do
  let(:player1) { double(:player, name: 'jini', health: 0) }
  let(:player2) { double(:player, name: 'miho', health: 100) }
  subject(:game) { described_class.new(player1, player2) }

  describe '#player_1' do
    it 'gets player 1' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player_2' do
    it 'gets player 2' do
      expect(game.player2).to eq player2
    end
  end

  describe '#attack' do
    it 'player 1 attacks player 2' do
      expect(player2).to receive(:reduce_hp)
      game.attack(player2)
    end
  end

  describe '#game_over?' do
    it "ends the game when a player's HP reaches 0" do
      expect(game).to be_game_over
    end
  end
end
