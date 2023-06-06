require "./card.rb"
class Board
    def initialize(n)
      @grid = Array.new(n) { Array.new(n) }
      @size = n * n
      self.populate
    
    end
  
    def card_maker
      card_arr = []
      card_values = ('a'..'z').to_a
      card_values.each do |value|
        if card_arr.length < @size
            card_arr << Card.new(value)
            card_arr << Card.new(value)
        end
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

    def render
        @grid.each do |row|
            puts row.join(" ")
        end
    end

    def won?
        @grid.flatten.all? do |card|
            card.reveal
        end
    end

    def reveal(guessed_pos)
        row, col = pos
        if !@grid[row][col].reveal
            @grid[row][col].reveal
        end
        @grid[row][col]
    end
end