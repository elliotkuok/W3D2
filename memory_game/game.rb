require "./card.rb"
require "./board.rb"

class Game
    def initialize(n)
        @board = Board.new(n)
        @prev_guess = nil
    end

    def play
        while !@board.won?
            @board.render
            if @prev_guess == nil
                pos = make_guess
                row, col = pos
                reveal(pos)
                @prev_guess = pos
            else
                
            end
        end
    end

    def make_guess
        puts "enter your position (2 numbers separated by a space)"
            pos = gets.chomp.split.map(&:to_i)
    end
end