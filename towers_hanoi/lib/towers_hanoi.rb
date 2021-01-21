class Game
    attr_accessor :towers
    

    def initialize
        @towers = [[:S,:M,:L], [], []]
    end

    def player_input
        starting_pos = gets.chomp.to_i
        ending_pos = gets.chomp.to_i

        move = [starting_pos, ending_pos]
    end

end