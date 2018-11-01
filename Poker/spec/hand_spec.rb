require "hand"

RSpec.describe Hand do
  let(:kingheart) { double("KoH", :value => 13, :suit => :heart) }
  let(:queenspade) { double("QoS", :value => 12, :suit => :spade) }
  let(:jackclub) { double("JoC", :value => 11, :suit => :club) }
  let(:tendiamond) { double("10oD", :value => 10, :suit => :diamond) }
  let(:nineheart) { double("9oH", :value => 9, :suit => :heart) }


  subject(:test_hand) { }
  describe "#initialize" do
    it "stores 5 cards in an array"
    it "finds the hand highest_card"
    it "finds the hand's value"
  end

  describe "#value" do
    it "successfully identifies a straight" do
      straight_hand = [kingheart, queenspade, jackclub, tendiamond, nineheart]
      subject(:hand) { Hand.new(straight_hand) }
      expect(hand.value).to eq(5)
    end
    it "successfully identifies a four of a kind"
    it "successfully identifies a full house"
    it "successfully identifies a flush"
    it "successfully identifies a straight"
    it "successfully identifies a three of a kind"
    it "successfully identifies a two pair"
    it "successfully identifies a one pair"
    it "successfully identifies a high card"
  end


end
