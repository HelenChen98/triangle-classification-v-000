class Triangle
  attr_accessor :sum1, :sum2, :sum3, :a, :b, :c, :valid

  def initialize(a,b,c)
    @sum1 = a+b
    @sum2 = a+c
    @sum3 = b+c
    @a = a
    @b = b 
    @c = c 

    if a <= 0 || b <= 0 || c <= 0
      @valid = false
    elsif @sum1 < c || @sum2 < b || @sum3 < a
      @valid = false
    else
      @valid = true
    end
  end
  

  def kind
    if @valid = false
      raise TriangleError
    else
      if @a = @b = @c
        return :equilateral
      elsif @a = @b || @a = @c || @b = @c
        return  :isosceles
      else
        return :scalene
      end
    end
  end

  class TriangleError < StandardError
  end



end
