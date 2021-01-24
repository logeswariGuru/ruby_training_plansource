class Rectangle
  attr_accessor :area
  attr_reader :length, :breadth
  def initialize(area, length, breadth)
  	@area = area
  	@length = length
  	@breadth = breadth
  end
end