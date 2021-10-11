require 'player'

describe Player do
  subject(:jack) { Player.new('Jack') }
  subject(:jill) { Player.new('Jill') }

  describe '#name' do
    it 'returns the name' do
      expect(jack.name).to eq 'Jack'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
        expect(jack.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
        expect(jill).to receive(:receive_damage)
        jack.attack(jill)
    end
  end

  describe '#receive damage' do 
   it 'reduces the players hit points' do
    expect{jill.receive_damage}.to change { jill.hit_points }.by(-10)
   end
  end 



end
