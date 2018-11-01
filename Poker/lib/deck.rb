require_relative 'card.rb'

class Deck
  attr_reader :deck

  def initialize
    @deck = Deck.make_cards
  end

  def shuffle

  end

  

private

  def self.make_cards
    all_cards = []
    Card::SUITS.each do |suit|
      Card::VALUES.each do |val|
        all_cards << Card.new(val, suit)
      end
    end

    all_cards
  end

end
