class Rectangle
  attr_accessor :area
  attr_reader :length, :breadth
  def initialize(length, breadth)
  	@length = length
  	@breadth = breadth
  end

  def calculate_area
  	@area = @length * @breadth
  end
end