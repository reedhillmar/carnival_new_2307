class Visitor
  attr_reader :name, :height, :spending_money, :preferences

  def initialize(name, height, cash)
    @name = name
    @height = height
    @spending_money = cash.sub("$", "").to_i
    @preferences = []
  end

  def add_preference(type)
    @preferences << type
  end

  def tall_enough?(min_height)
    @height >= min_height
  end

  def pay_for_ride(admission_fee)
    @spending_money -= admission_fee
  end
end