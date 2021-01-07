require './dice.rb'
require './pawn.rb'

class WinnerWasCalled < StandardError
end

class Board
  attr_accessor :max_position
  attr_accessor :pawns
  attr_accessor :dice
  attr_accessor :winner
  attr_accessor :turns_counter

  def dice
    @dice
  end

  def initialize
    @max_position = 100
    @pawns = []
    @dice = Dice.new
    @winner = Pawn.new('')
    @turns_counter = 0
  end

  def perform_turn
    @turns_counter += 1
    puts " "
    puts "Turn " + @turns_counter.to_s
    pawns.each do |pawn|
      @random = @dice.roll
      puts @random
      pawn.position += @random
      puts pawn.inspect
      puts pawn.name + " new position: " + pawn.position.to_s

      if pawn.position >= max_position
        winner.name = pawn.name
        rise WinnerWasCalled
      end
    end
  end
end