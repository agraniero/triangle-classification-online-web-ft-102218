
class Triangle
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a 
    @b = b 
    @c = c 
  end
  
  def kind
    valid_triangle?
    # if valid_triangle? evals to 'false' raise our custom error, otherwise do the following:
    if @a == @b && @b == @c 
      :equilateral
    elsif (@a == @b && @b != @c) || (@b == @c && @c != @a)
      :isosceles
    else 
      :scalene
      
    #nested if statements, rly?  should refactor in near future  
      
  end
  
  def valid_triangle?
    # if both following conditions eval to 'true', return 'true'
    # @a > 0 && @b > 0 && @c > 0
    # the sum of any two sides musn't be greater than the length of the remaining side.
  end  
  
  
  
  
  
  
  class TriangleError < StandardError 
  end   
  
end

