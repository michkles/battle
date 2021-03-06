require './lib/player.rb'

describe Player do
	subject { described_class.new(:name) }
	let(:player) { double(hp: 100) }
	let(:player2) { Player.new('player2')}


	describe '#name' do
		it 'returns the players name' do
			expect(subject.name).to eq :name
		end
	end

	describe '#hp' do
		it 'returns the players hp' do
			expect(subject.hp).to eq 100
		end
	end

	describe '#attack' do
		it "reduces player's hp by 10" do
			expect { subject.attack(player2) }.to change{ player2.hp }.by(-10)
		end
	end

end
