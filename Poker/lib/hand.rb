class Hand
  attr_reader :hand

  VALUES = {
    9 => "Straight Flush",
    8 => "Four of a Kind",
    7 => "Full House",
    6 => "Flush",
    5 => "Straight",
    4 => "Three of a Kind",
    3 => "Two Pairs",
    2 => "One Pair",
    1 => "High Card"
  }


  def initialize(cards)
    #array of five cards
    @hand = cards
    @value = determine_value
    @highest_card = highest_value
  end






  private

  def highest_value
    hand.map {|card| card.value}.max
  end

  def determine_value
    if straight_flush?
      @value = 9
    elsif four_of_a_kind?
      @value = 8
    elsif full_house?
      @value = 7
    elsif flush?
      @value = 6
    elsif straight?
      @value = 5
    elsif three_of_a_kind?
      @value = 4
    elsif two_pairs?
      @value = 3
    elsif one_pair?
      @value = 2
    else
      @value = 1
    end 
  end


end
