require_relative 'card.rb'

class Deck
  SUITS = [:club, :spade, :diamond, :heart]
  VALUES = (1..13).to_a

  attr_reader :deck

  def initialize
    @deck = Deck.make_cards
  end

private

  def self.make_cards
    all_cards = []
    SUITS.each do |suit|
      VALUES.each do |val|
        all_cards << Card.new(val, suit)
      end
    end

    all_cards
  end

end
