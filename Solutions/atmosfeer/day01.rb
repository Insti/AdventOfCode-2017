digits = ""

File.open("day02.input").each do |line|
  digits += line.strip
end

digits = digits.chars.map(&:to_i)

part1 = 0
part2 = 0

digits.each_with_index do |n, i|
  part2 += n if n == digits[(i + (digits.size / 2)) % digits.size]
  part1 += n if n == digits[(i + 1) % digits.size]
end

# counter += digits.last if digits.last == digits.first

puts "Part 1 Solution: #{part1}"
puts "Part 2 Solution: #{part2}"
