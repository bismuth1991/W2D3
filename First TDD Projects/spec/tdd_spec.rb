require "tdd"

RSpec.describe "#my_uniq" do
  subject(:my_arr) { [1, 1, 3, 5, 3, 4] }

  context "when the argument is not an array" do
    subject(:my_not_arr) { "blahhhh" }
    it "throws an ArgumentError" do
      expect { my_uniq(my_not_arr) }.to raise_error(ArgumentError)
    end
  end

  context "when the argument is an array" do
    it "only appears once in the array" do
      expect(my_uniq(my_arr)).to eq([1, 3, 5, 4])
    end

    it "doesn't mutate the original array" do
      my_uniq(my_arr)
      expect(my_arr).to eq([1, 1, 3, 5, 3, 4])
    end
  end

end


RSpec.describe "#two_sum" do
  subject(:arr) { [-1, 0, 2, -2, 1] }

  context "when the argument is an array" do
    it "finds all indices where the sum is zero" do
      expect(two_sum(arr)).to eq([[0, 4], [2, 3]])
    end

    it "doesn't repeat the same pair of indices" do
      expect(two_sum(arr)).to_not eq([[0, 4], [4, 0], [2, 3], [3, 2]])
    end

    it "starts with the smallest indices" do
      expect(two_sum(arr)).to_not eq([[2, 3], [0, 4]])
    end
  end

  context "when the argument is not an array" do
    it "raises an ArgumentError when the argument is not an array" do
      expect { two_sum(100) }.to raise_error(ArgumentError)
    end
  end
end

RSpec.describe "#my_transpose" do
  subject(:arr) {
    [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ]
  }

  it "correctly transposes array" do
    expect(my_transpose(arr)).to eq(arr.transpose)
  end

  it "does not flatten the array" do
    expect(my_transpose(arr).length).to eq(arr.length)
  end

end

RSpec.describe "stock_picker" do
  subject(:stock_prices) { [100, 3, 12, 20, 1] }

  it "doesn't sell before it buys" do
    expect(stock_picker(stock_prices)).to_not eq([0, 4])
  end

  it "correctly picks the two days" do
    expect(stock_picker(stock_prices)).to eq([1, 3])
  end

end
