class Carnival
  attr_reader :duration, :rides

  def initialize(carnival_details)
    @duration = carnival_details[:duration]
    @rides = carnival_details[:rides]
  end

  def add_ride(ride)
    @rides << ride
  end

  # def most_popular_ride
  #   @rides.each_with_object([]) do |ride, a|
  #     a << ride.total_revenue / ride.admission_fee
  #   end
  # end

  def total_revenue
    @rides.map {|ride| ride.total_revenue}.sum
  end
end