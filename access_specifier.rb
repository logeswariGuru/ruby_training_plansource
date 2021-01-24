class Polygon
  attr_reader :area_value
  def initialize(area)
    @area_value = area
  end
	def area
		p "area #{@area_value} from polygon class"		
	end

	private
	def area_private
		p "area private from polygon "
  end	

  protected
  def area_protected
    p "area protected from polygon"
  end
end

# square sub class
class Square < Polygon
  def initialize(area)
    @area_value = area
  end
  def area
    p "area #{@area_value}from square class"
  end

  def self.info
    p "accessing polygon area from square"
    p   Polygon.new(40).area_value
  end
end

# rectangle sub class
class Rectangle < Polygon
  def initialize(area)
    @area_value = area
  end
  def area
    p "area #{@area_value}from rectangle class"
  end
  def self.info
    p "accessing polygon area from rectangle"
    Polygon.new(30).area
  end
end

p = Polygon.new(10)
p.area
# p.area
s = Square.new(10)
Square.info
# s.area

