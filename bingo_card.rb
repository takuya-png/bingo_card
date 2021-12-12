def word
  [' B', ' I', ' N', ' G', ' O'].join(' | ')
end

def numbers
  bingos = (1..75).each_slice(15).map { |bingo| bingo.sample(5) }.transpose
  bingos[2][2] = "  "
  bingos.map  { |bin|
    bin.map { |b| b.to_s.rjust(2) }.join(" | ")
  }.join("\n")
end

puts word
puts numbers