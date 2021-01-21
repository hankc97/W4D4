class Game
    attr_reader :towers
    
    def self.generate_towers
        [[:S,:M,:L], [], []]
    end


    def initialize
        @towers = Game.generate_towers
    end


end