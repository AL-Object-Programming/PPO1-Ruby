class Pawn

  attr_accessor :position
  attr_accessor  :name

  def initialize(name)
    @position = 0
    @name = name
    puts @name + " joined the game."
  end

  def get_name
    @name
  end
end