class Hand
  attr_reader :hand, :value, :highest_card

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
    @value = determine_value(cards)
    @highest_card = highest_value
  end






  private

  def highest_value
    hand.map {|card| card.value}.max
  end

  def determine_value(cards)
    if straight_flush?(cards)
      9
    elsif four_of_a_kind?(cards)
      8
    elsif full_house?(cards)
      7
    elsif flush?(cards)
      6
    elsif straight?(cards)
      5
    elsif three_of_a_kind?
      4
    elsif two_pairs?
      3
    elsif one_pair?
      2
    else
      1
    end
  end


  def straight_flush?(cards)
  end

  def four_of_a_kind?(cards)
  end

  def full_house?(cards)
  end

  def flush?(cards)
  end

  def straight?(cards)
    value = []
    @hand.each { |card| value << card.value }
    value.uniq.length == 5 && value.max - value.min == 4
  end


end
