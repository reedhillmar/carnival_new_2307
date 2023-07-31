class Carnival
  attr_reader :duration, :rides

  def initialize(carnival_details)
    @duration = carnival_details[:duration]
    @rides = carnival_details[:rides]
  end

  def add_ride(ride)
    @rides << ride
  end

  def total_revenue
    @rides.map {|ride| ride.total_revenue}.sum
  end
end