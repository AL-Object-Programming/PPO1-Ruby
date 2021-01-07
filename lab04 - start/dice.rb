class Dice

  def roll
    result = Random.new.rand(1..6)
    puts "Dice roll: " + result.to_s
    result
  end

end