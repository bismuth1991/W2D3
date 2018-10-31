require "deck"

RSpec.describe Deck do
  subject(:test_deck) { Deck.new }

  describe "#initialize" do
    it "makes an instance variable @deck as an array" do
      expect(test_deck.deck).to be_a(Array)
    end

    it "stores 52 cards" do
      expect(test_deck.deck.length).to be(52)
    end

    it "has 13 of each suits" do
      suit_counter = Hash.new(0)
      test_deck.deck.each do |card|
        suit_counter[card.suit] += 1
      end

      expect(suit_counter.values.all? { |num| num == 13 } ).to be true
    end

    it "has 4 suits for each value" do
      value_counter = Hash.new(0)
      test_deck.deck.each do |card|
        value_counter[card.value] += 1
      end

      expect(value_counter.values.all? { |num| num == 4 } ).to be true
    end
  end



end
