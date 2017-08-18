# die.rb

class Die

  attr_reader :value

  def initialize(sides = 6)
    raise ArgumentError.new("A Die must have more than 0 sides") if sides <= 1
    raise ArgumentError.new("A Die must have an integer number of sides") if sides.class != Integer
    @sides = sides
    roll
  end

  def roll
    @value = rand(@sides) + 1
  end

end
