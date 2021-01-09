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
    puts "a: " + @point_a.show + " b: " + @point_b.show + " c: " + @point_c.show + " d: " + @point_d.show
  end

  def check_if_square
    ab = Math.sqrt((@point_a.coordinate_x - @point_b.coordinate_x) ** 2) + ((@point_a.coordinate_y - @point_b.coordinate_y) ** 2)
    bc = Math.sqrt((@point_b.coordinate_x - @point_c.coordinate_x) ** 2) + ((@point_b.coordinate_y - @point_c.coordinate_y) ** 2)
    ad = Math.sqrt((@point_a.coordinate_x - @point_d.coordinate_x) ** 2) + ((@point_a.coordinate_y - @point_d.coordinate_y) ** 2)
    cd = Math.sqrt((@point_c.coordinate_x - @point_d.coordinate_x) ** 2) + ((@point_c.coordinate_y - @point_d.coordinate_y) ** 2)
    if ab == bc && ab == ad && ab == cd && bc == ad && bc == cd && ad == cd
      puts "This square has geometrical sense"
      1
    else
      0
    end
  end
end