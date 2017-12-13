class CodeExample
  def call(matrix)
    matrix.reduce(0) do |sum, array|
      min = array.min
      max = array.max
      sum + max - min
    end
  end
end
