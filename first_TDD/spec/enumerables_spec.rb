require 'enumerables.rb'
require 'rspec'

describe "#my_uniq" do
    let(:array) {[1, 1, 2, 3, 2]}
    it "returns an array with duplicate element removed" do
        expect(my_uniq(array)).to eq([1, 2, 3])
    end

end

describe "#two_sum" do
    let(:array) {[-1 ,0 ,2 ,-2 ,1]}
    it "returns 2D array of indexes that equal to 0" do
        expect(two_sum(array)).to eq([[0, 4], [2, 3]])
    end


end

describe "#my_tranpose" do
    let(:matrix) { [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ]}
    let (:tranposed) {[
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
      ]}  
    it "returns transposed matrix" do
        expect(my_tranpose(matrix)).to eq(tranposed)
    end
end