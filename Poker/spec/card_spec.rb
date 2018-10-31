require "card"

RSpec.describe Card do
subject(:card) { Card.new(10, :club) }

  describe "#initialize" do
    it "should have a value" do
      expect(card.value).to eq(10)
    end

    it "should have a suit" do
      expect(card.suit).to eq(:club)
    end
  end
  
end
