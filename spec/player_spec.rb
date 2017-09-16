require 'player'

describe Player do
  subject(:batman) { Player.new('Batman') }

  describe '#name' do
    it 'returns the name' do
      expect(batman.name).to eq 'Batman'
    end
  end

  describe '#hit_points' do
  it 'returns the hit points' do
    expect(batman.hitpoint).to eq described_class::DEFAULT_HIT_POINTS
  end
end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { batman.receive_damage }.to change { batman.hitpoint }.by(-10)
    end
  end
end
