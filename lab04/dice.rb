class Dice
  :number_of_walls

  def initialize(number_of_walls)
    @number_of_walls = number_of_walls
  end

  def roll
    result = Random.new.rand(1..@number_of_walls)
    puts "Dice roll: " + result.to_s
    result
  end

end