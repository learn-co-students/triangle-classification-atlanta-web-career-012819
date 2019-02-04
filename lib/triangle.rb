require 'pry'
class Triangle
  attr_reader :a,:b,:c,:kind

  def initialize(*args)
    sides = args.sort
    if sides[0] + sides[1] <= sides[2]
      raise TriangleError
    else
      a,b,c = sides
      binding.pry
      if a == c && a == b
        @kind = :equilateral
      elsif a != b && b == c
        @kind = :isosceles
      elsif a != b && b != c
        @kind = :scalene
      end
    end
  end

  class TriangleError < StandardError
  end
  # write code here
end
