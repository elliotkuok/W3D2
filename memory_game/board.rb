require "./card.rb"
class Board
    def initialize(n)
        @grid = Array.new(n) {Array.new(n)}
    end

    def card_maker
        card_arr = []
        card_values = ('a'..'z').to_a
        card_values.each do |value|
            card_arr << Card.new(value) 
            card_arr << Card.new(value) 
        end
        card_arr
    end

    def populate
        cards = card_maker
        cards.shuffle!
        @grid.each_with_index do |row, i|
            row.each_with_index do |ele, j|
                @grid[i][j] = cards.pop
            end
        end
    end


end