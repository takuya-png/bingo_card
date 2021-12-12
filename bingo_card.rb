def card
  bingo = ["BINGO".chars]
  numbers = (1..75).each_slice(15).map { |number| number.sample(5) }.transpose
  numbers[2][2] = "  "
  rows = bingo + numbers
  rows.map  { |row|
    row.map { |r| r.to_s.rjust(2) }.join(" | ")
  }.join("\n")
end

puts card