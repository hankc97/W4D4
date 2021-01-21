def my_uniq(array)
    array.uniq
end

def two_sum(array)
    new_arr = []
    (0...array.length).each do |idx1|
        (idx1 + 1...array.length).each do |idx2|
            new_arr << [idx1, idx2] if array[idx1] + array[idx2] == 0
        end
    end
    new_arr
end

def my_tranpose(matrix)
    new_matrix = Array.new(matrix.length) {Array.new(matrix.length)}
    matrix.each_index do |idx1|
        matrix.each_index do |idx2|
            new_matrix[idx1][idx2] = matrix[idx2][idx1]
        end
    end
    new_matrix
end

def stock_picker(stock_prices)
    sorted_prices = stock_prices.sort_by {|k,v| v}
    
    buy_sell_days = {"buy" => [], "sell" => []}

    sorted_prices.each_index do |i|
        if i == 0 || i == 1
            buy_sell_days["buy"] << sorted_prices[i][0]
        elsif i == sorted_prices.length - 1 || i == sorted_prices.length - 2
            buy_sell_days["sell"] << sorted_prices[i][0]
        end
    end
    buy_sell_days
end

stock_prices = {"day1" => 500, "day2" => 200, "day3" => 300, 
    "day4" => 400, "day5" => 1000, "day6" => 600}


