class Vehical
  attr_reader :no_of_tires, :total_seats
  def initialize(no_of_tires, total_seats)
    @no_of_tires = no_of_tires
    @total_seats = total_seats
  end
  def moves

  end
end

class Car < Vehical

end

class Bike < Vehical

end
