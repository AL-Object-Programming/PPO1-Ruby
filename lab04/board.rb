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
    @dice = Dice.new(0)
    @winner = Pawn.new('', 0)
    @turns_counter = 0
  end

  def perform_turn

    @turns_counter += 1
    puts "Turn " + @turns_counter.to_s
    puts " "
    pawns.each do |pawn|
      @random = @dice.roll
      pawn.position += @random
      puts pawn.name + " new position: " + pawn.position.to_s
      puts " "

      if pawn.position >= max_position
        winner.name = pawn.name
        rise WinnerWasCalled
      end
    end
  end
end