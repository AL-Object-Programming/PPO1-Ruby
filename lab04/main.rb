require './board.rb'
require './dice.rb'
require './pawn.rb'

class Main
  @number = 0
  @players = ["Amy", "Terrence", "Sebastian", "Aaron", "Codie", "Ruby"]
  @board = Board.new

  loop do
    puts "Limit moves of players? y/n"
    @answer = gets
    @answer = @answer.chomp
    if @answer == "y"
      puts " "
      puts "Type number of player's moves:"
      @moves = gets
      break
    end
    if @answer == "n"
      break
    end
  end

  @players.each do |player|
    @board.pawns.push(Pawn.new(player, @moves))
  end

  puts " "
  puts "Type number of dice's walls:"
  @number_of_walls = gets
  @board.dice = Dice.new(@number_of_walls.chomp.to_i)

  puts " "
  puts "Type number of turns:"
  @number_of_turns = gets
  @board.max_position = @number_of_turns.chomp.to_i

  puts @board.dice.inspect
  begin
    while true
      @board.perform_turn
    end rescue WinnerWasCalled
    puts " "
    puts @board.winner.name + " won."
  end
end

