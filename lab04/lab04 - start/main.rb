require './board.rb'
require './dice.rb'
require './pawn.rb'

class Main
  @board = Board.new
  @board.dice = Dice.new
  @board.pawns.push( Pawn.new("Luke Skywalker"))
  @board.pawns.push(Pawn.new("Darth Vader"))
  begin while true
      @board.perform_turn
    end rescue WinnerWasCalled
    puts " "
    puts @board.winner.name + " won."
  end
end
