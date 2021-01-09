class Point
  attr_reader :coordinate_x
  attr_reader :coordinate_y

  def initialize (coordinate_x, coordinate_y)
    @coordinate_x = coordinate_x
    @coordinate_y = coordinate_y
  end

  def show
    "(" + @coordinate_x.to_s + ", " + @coordinate_y.to_s + ")"
  end

end