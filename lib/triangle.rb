class Triangle
  # write code here
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if @x > 0 && @y > 0 && @z > 0 &&
      (@x + @y > @z) && (@x + @z > @y) && (@y + @z > @x)
      if @x == @y && @y == @z
        :equilateral
      elsif @x == @y || @x == @z || @y == @z
        :isosceles
      elsif @x != @y && @x != @z && @y != @z
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
