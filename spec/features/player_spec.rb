require 'player'

describe Player do
  subject(:charlotte) { Player.new('Charlotte') }
  subject(:mittens) { Player.new('Mittens') }

  describe '#name' do
    it 'returns the name' do
      expect(charlotte.name).to eq 'Charlotte'
    end
  end

  describe '#hp' do
    it 'returns hp' do
      expect(charlotte.hp).to eq Player::DEFAULT_HP
    end
  end
  
  describe '#reduce_health' do
    it 'reduces health by 10hp' do
      expect{ charlotte.attack(mittens) }.to change { mittens.hp }.by(-10)
    end
  end
end