
def my_uniq(array)
  raise ArgumentError unless array.class == Array

  answer = []
  array.each do |ele|
    answer << ele unless answer.include?(ele)
  end

  answer
end
