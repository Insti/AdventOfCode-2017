class Day01
  def calculate(numbers)
    number_string = numbers.to_s
    array_digits = number_string.split("")
    array_digits << array_digits.first
    matches = array_digits.each_cons(2).select do |a, b|
      a == b
    end
    matches.map(&:first).map(&:to_i).reduce(:+).to_s
  end
end
