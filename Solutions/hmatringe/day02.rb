require 'CSV'

counter = 0

csv_file = 'day02_input.csv'

csv_options = { col_sep: "\t" }

CSV.foreach(csv_file, csv_options) do |row|
  digits = row.map(&:to_i).sort
  counter += digits[-1] - digits[0]
end

p counter