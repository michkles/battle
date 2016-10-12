require './lib/player.rb'

describe Player do
	subject { described_class.new(:name) }


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

end