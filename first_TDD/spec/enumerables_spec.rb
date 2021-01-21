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

describe "#stock_picker" do
    let(:stock_prices) {{"day1" => 500, "day2" => 200, "day3" => 300, 
        "day4" => 400, "day5" => 1000, "day6" => 600}}
    let(:sorted_stock) {{"day2" => 200, "day3" => 300, "day4" => 400, 
    "day1" => 500, "day6" => 600, "day5" => 1000}}
    let(:sorted_stock_days) {["day2", "day3", "day4", "day1", "day6", "day5"]} 
    let(:buy_sell_days) {{"buy" => ["day2", "day3"], "sell" => ["day6", "day5"]}}
  
    it "should test if the hash sorts by value" do 
        expect(stock_prices).to eq(sorted_stock) 
    end

    it "should return hash that contains two min days and two max days" do
        expect(stock_picker(stock_prices)).to eq(buy_sell_days)
    end

end