require "towers_of_hanoi"

RSpec.describe TowersOfHanoi do
  subject(:game) { TowersOfHanoi.new }

  describe "#initialize" do
    it "creates three towers by default"
    it "fills the first tower with three disks"
    it "puts the disks in the right order"
  end

  describe "#move" do
    it "make sure the selected tower is not empty"
    it "make sure a big disk is not stacked on top of a smaller disk"
    it "a selection only moves the top-most element in the tower"
  end

  describe "#won?" do
    it "stops the game when the game is won"
    it "displays a congratulations message"
  end

end
