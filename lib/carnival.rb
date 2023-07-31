class Carnival
  attr_reader :duration, :rides

  def initialize(carnival_details)
    @duration = carnival_details[:duration]
    @rides = carnival_details[:rides]
  end
end