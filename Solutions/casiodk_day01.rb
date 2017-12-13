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

  attr_reader :sum, :str

  def last_index
    @last_index ||= str.size - 1
  end

  def calculate_sum
    str.each_char.with_index do |char, index|
      if str[index].to_i == str[next_char(index)].to_i
        @sum += str[index].to_i
      end
    end
  end

  def next_char(index)
    last_index == index ? 0 : index + 1
  end
end
