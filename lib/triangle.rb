class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c 
  end

  def validate_triangle
    # make new method b/c so many conditions
    # no side can be zero
    [a, b, c].each do |side|
      raise TriangleError if side <= 0
    end
    if a + b <= c || b + c <= a || a + c <= b
    # the sum of two sides is greater than the other
      raise TriangleError
    end 
  end

  def kind 
    validate_triangle

    if a == b && b == c
      :equilateral
    elsif a != b && b != c && a != c
      :scalene
    else 
      # isocelese involves a lot of conditions, so just put at end
      :isosceles
    end 
  end 

  class TriangleError < StandardError
    # triangle error code
  end

end
