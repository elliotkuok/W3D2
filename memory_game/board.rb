require "./card.rb"
class Board
    def initialize(n)
        @grid = Array.new(n) {Array.new(n)}
    end

    def card_maker
        card_values = ('a'..'z').to_a
        while
        card_values.each do |value|
            card_arr << Card.new(value) 
            card_arr << Card.new(value) 
        end
        card_arr
    end

    def populate
        cards = card_maker
        cards.shuffle!
        @grid.with_index do |i|
            @grid.with_index do |j|
                @grid[i][j] = cards.pop
            end
        end
    end


end