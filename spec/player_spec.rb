require 'player'

describe Player do
  let(:player1) { described_class.new("Lily") }
  let(:player2) { described_class.new("Dexter") }

  it 'returns a name' do
    expect(player1.player_name).to eq("Lily")
  end

  describe "reduce hp" do
    it "reduces hp of player 2" do
      player2.reduce_hp
      expect(player2.health).to eq 90
    end
  end

  describe "health" do
    it "returns the health of a player 2" do
      expect(player2.health).to eq described_class::MAX_HP
    end
  end

  describe "attack" do
    it "player 1 attacks player 2" do
      expect(player2).to receive(:reduce_hp)
      player1.attack(player2)
    end
  end
end
