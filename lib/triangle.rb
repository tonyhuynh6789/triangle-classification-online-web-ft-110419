class Triangle 

  def initialize(size_one, size_two, size_three)
    @size_one = size_one
    @size_two = size_two
    @size_three = size_three
  end 


  def kind
    if (@size_one <= 0) || (@size_two <= 0) || (@size_three <= 0)
      raise TriangleError
    elsif (@size_one + @size_two <= @size_three) || (@size_two + @size_three <= @size_one) || (@size_one + @size_three <= @size_two)
      raise TriangleError
    else 
      if (@size_one == @size_two) && (@size_two == @size_three)
        :equilateral 
      elsif (@size_one == @size_two) || (@size_two == @size_three) || (@size_one == @size_three)
        :isosceles 
      elsif (@size_one != @size_two) && (@size_two != @size_three) && (@size_one != @size_three)
          :scalene
      end 
    end 
  end 
       
  class TriangleError < StandardError 

  end 
end 