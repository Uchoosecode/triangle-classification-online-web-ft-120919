class Triangle
 
 attr_accessor :equilateral, :isosceles, :scalene
 
 def initialize(side1, side2, side3)
   @side1 = side1
   @side2 = side2
   @side3 = side3
   
 end
  
  def kind 
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0 
      raise
      TriangleError
    
    elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
      raise 
      TriangleError
    
    else
      if @side1 == @side2 && @side3 == @side1
        :equilateral
      
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        :isosceles
    
      else 
        :scalene
      end
    end
  end
  
    class TriangleError < StandardError
    end
  
end
