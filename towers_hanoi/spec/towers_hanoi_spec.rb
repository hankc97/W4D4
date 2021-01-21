require 'towers_hanoi'
require'rspec'

describe Game do
        subject(:hanoi_towers) {Game.new}
        let(:starting_towers) {[[:S,:M,:L], [], []]}
    describe "#initialize" do
        it "should generate towers 2D array" do
            allow(hanoi_towers.towers).to receive(hanoi_towers::generate_towers).and_return(starting_towers)
        end
    end
end
