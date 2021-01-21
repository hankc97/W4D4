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