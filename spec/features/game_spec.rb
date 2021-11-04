require 'game'


describe Game do
  subject(:game) {Game.new(player_1, player_2)}
  let(:player_1) {double :player}
  let(:player_2) {double :player}
  
  describe '#attack' do
  it 'reduces health by 10hp when player attacks' do
    expect(player_2).to receive(:reduce_health)
    game.attack(player_2)
    
  end
 end
end 