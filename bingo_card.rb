B = (1..15).to_a
I = (16..30).to_a
N = (31..45).to_a
G = (46..60).to_a
O = (61..75).to_a

def word
  ['B', 'I', 'N', 'G', 'O'].join('  | ')
end

def numbers
  bingos = [B, I, N, G, O].map { |bingo| bingo.sample(5) }.transpose
  bingos.map  { |bin|
    bin.join(" | ")
  }.join("\n")
end

puts word
puts numbers