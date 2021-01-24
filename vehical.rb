class Vehical
  attr_reader :no_of_tires, :total_seats

  def initialize(no_of_tires, total_seats)
    @no_of_tires = no_of_tires
    @total_seats = total_seats
  end

  private
  def moves(move)
    p "#{move} with #{no_of_tires} tires and #{@total_seats} seats"
  end
end

class Car < Vehical
  def initialize(no_of_tires, total_seats)
	super
	p "no_of_tires is #{no_of_tires}"
  end
  def move
    moves("car moves safe")
  end
end

class Bike < Vehical
  def initialize(no_of_tires, total_seats)
	super
  end
  def move
    moves("car moves safe")
  end
end
