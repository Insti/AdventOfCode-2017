digits = File.open("day01.input").read.char.map(&:to_i)

part1 = 0
part2 = 0

digits.each_with_index do |n, i|
  part2 += n if n == digits[(i + (digits.size / 2)) % digits.size]
  part1 += n if n == digits[(i + 1) % digits.size]
end


puts "Part 1 Solution: #{part1}"
puts "Part 2 Solution: #{part2}"
