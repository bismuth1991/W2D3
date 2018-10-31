require "tdd"
# require "rspec"
# require "spec_helper"

# RSpec.describe Array do

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

# end
