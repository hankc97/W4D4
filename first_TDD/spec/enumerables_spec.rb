require 'enumerables.rb'
require 'rspec'

describe "#my_uniq" do
    let(:array) {[1, 1, 2, 3, 2]}
    it "returns an array with duplicate element removed" do
        expect(my_uniq(array)).to eq([1, 2, 3])
    end

end