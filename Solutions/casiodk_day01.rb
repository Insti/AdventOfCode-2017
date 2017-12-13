class CodeExample
  def initialize(str)
    @str = str
    @sum = 0
  end

  def call
    calculate_sum

    sum
  end

  private

  attr_reader :sum, :str, :index

  def last_index
    @last_index ||= str.size - 1
  end

  def calculate_sum
    str.each_char.with_index do |char, i|
      @index = i
      @sum += str[index].to_i if is_a_match?
    end
  end

  def next_char
    last_index == index ? 0 : index + 1
  end

  def is_a_match?
    str[index].to_i == str[next_char].to_i
  end
end
