def my_uniq(array)
  raise ArgumentError unless array.class == Array

  answer = []
  array.each do |ele|
    answer << ele unless answer.include?(ele)
  end

  answer
end

def two_sum(array)
  raise ArgumentError unless array.class == Array

  answer = []
  array.each_with_index do |el1, i1|
    array.each_with_index do |el2, i2|
      if i2 > i1 && el1 + el2 == 0
        answer << [i1, i2]
      end
    end
  end

  answer
end

def my_transpose(array)
  answer = []

  array[0].length.times do |i1|
    new_row = []
    array.length.times do |i2|
      new_row << array[i2][i1]
    end

    answer << new_row
  end

  answer
end

def stock_picker(arr)
  difference = 0
  answer = nil

  arr.each_with_index do |price1, day1|
    arr.each_with_index do |price2, day2|
      if day1 < day2 && ((price2 - price1) > difference )
        difference = price2 - price1
        answer = [day1, day2]
      end
    end
  end

  answer
end
