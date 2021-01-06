class Point
  :coordinate_x
  :coordinate_y

  def initialize (coordinate_x, coordinate_y)
    @coordinate_x = coordinate_x
    @coordinate_y = coordinate_y
  end

  def get_coordinate_x
    @coordinate_x
  end

  def get_coordinate_y
    @coordinate_y
  end

  def get_point
    "(" + @coordinate_x.to_s + ", " + @coordinate_y.to_s + ")"
  end

end