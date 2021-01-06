require './point'
require './square'
:number
:counter
Array squares = []
puts "How many squares generate?"
@number = gets
@counter = 0
if @number
  @number.to_i.times do

    a = Point.new(Random.new.rand(10), Random.new.rand(10))
    b = Point.new(Random.new.rand(10), Random.new.rand(10))
    c = Point.new(Random.new.rand(10), Random.new.rand(10))
    d = Point.new(Random.new.rand(10), Random.new.rand(10))

    squares.push(Square.new(a, b, c, d))
    squares.each { |square| @counter += square.check_if_square
    puts square.get_square}
  end
end

puts @counter
