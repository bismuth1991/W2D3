class Card
  SUITS = [:club, :spade, :diamond, :heart]
  VALUES = (1..13).to_a

  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end
end
