require './point'

class Square
  :point_a
  :point_b
  :point_c
  :point_d

  def initialize(point_a, point_b, point_c, point_d)
    @point_a = point_a
    @point_b = point_b
    @point_c = point_c
    @point_d = point_d
  end

  def get_square
    puts "a: " + @point_a.get_point + " b: " + @point_b.get_point + " c: " + @point_c.get_point + " d: " + @point_d.get_point
  end

  def check_if_square
    ab = Math.sqrt((@point_a.get_coordinate_x - @point_b.get_coordinate_x) ** 2) + ((@point_a.get_coordinate_y - @point_b.get_coordinate_y) ** 2)
    bc = Math.sqrt((@point_b.get_coordinate_x - @point_c.get_coordinate_x) ** 2) + ((@point_b.get_coordinate_y - @point_c.get_coordinate_y) ** 2)
    ad = Math.sqrt((@point_a.get_coordinate_x - @point_d.get_coordinate_x) ** 2) + ((@point_a.get_coordinate_y - @point_d.get_coordinate_y) ** 2)
    cd = Math.sqrt((@point_c.get_coordinate_x - @point_d.get_coordinate_x) ** 2) + ((@point_c.get_coordinate_y - @point_d.get_coordinate_y) ** 2)
    if ab == bc && ab == ad && ab == cd && bc == ad && bc == cd && ad == cd
      puts "This square has geometrical sense"
      1
    else
      0
    end
  end
end