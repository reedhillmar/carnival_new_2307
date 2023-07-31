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
end