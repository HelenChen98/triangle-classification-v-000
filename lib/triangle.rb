class Triangle
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    array = [@a, @b , @c]
    if @a + @b < @c || @a + @c < @b || @b + @c < @a || array.any? { |e| e <= 0 }
      raise TriangleError
    else
      if @a = @b = @c
        return "equilateral"
      elsif @a = @b || @a = @c || @b = @c
        return  "isosceles"
      else
        return "scalene"
      end
    end
  end

  class TriangleError < StandardError
  end



end
