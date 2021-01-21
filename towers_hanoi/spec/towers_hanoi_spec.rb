require 'towers_hanoi'
require'rspec'

describe Game do
    subject(:hanoi_towers) {Game.new}
    let(:starting_towers) {[[:S,:M,:L], [], []]}

    describe "#initialize" do
        it "should generate towers 2D array" do
            # allow(hanoi_towers.towers).to receive(::generate_towers).and_return(starting_towers)
            expect(hanoi_towers.towers).to eq(starting_towers)
        end
    end

    describe "#player_input" do
        let(:starting_pos) {gets.chomp.to_i}
        let(:ending_pos) {gets.chomp.to_i}
        let(:move) {[starting_pos, ending_pos]}
        it "input for starting position should be between 0 and 2" do
            
            expect(starting_pos).to be_between(0, 2)
        end

        it "input for ending position should be between (0 and 2)" do
            expect(ending_pos).to be_between(0, 2)
            expect(ending_pos).not_to eq(starting_pos)
        end

        # it "input for ending position should not be equal to starting position" do
        #     expect(ending_pos).not_to eq(starting_pos)
        # end

        it "should return an array [starting position, ending position]" do
            expect(move).to eq([starting_pos, ending_pos])
        end
    end

end
