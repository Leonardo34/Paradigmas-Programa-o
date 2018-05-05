mapaNavios1 = [[0, 0, 0, 0, 2, 2, 0, 0],
        [0, 0, 0, 0, 0, 0, 2, 2],
        [3, 3, 3, 0, 0, 0, 0, 0]]

mapaNavios2 = [[0, 0, 0, 0, 3, 3, 3, 0],
        [0, 0, 2, 0, 0, 0, 0, 0],
        [0, 0, 2, 0, 0, 2, 2, 0]]

mapaNavios3 = [[3, 0, 2, 2, 0, 0, 0, 0],
        [3, 0, 0, 0, 0, 0, 0, 0],
        [3, 0, 0, 0, 2, 2, 0, 0]]

sortear = [mapaNavios1, mapaNavios2, mapaNavios3]

mapaNavios = sortear[Random.new.rand(0..2)]

mapaTiro = [["\u{2753}", "\u{2753}", "\u{2753}", "\u{2753}", "\u{2753}", "\u{2753}", "\u{2753}", "\u{2753}"],
        ["\u{2753}", "\u{2753}", "\u{2753}", "\u{2753}", "\u{2753}", "\u{2753}", "\u{2753}", "\u{2753}"],
        ["\u{2753}", "\u{2753}", "\u{2753}", "\u{2753}", "\u{2753}", "\u{2753}", "\u{2753}", "\u{2753}"]]

def print_mapa(mapa)
  for i in 0..2
    for j in 0..7
      print "#{mapa[i][j]} "
    end
    puts ''
  end
end

tentativas = Random.new.rand(8..24)
acertos = 0

for tentativa in 1..tentativas
  puts 'Digite a cordenada x: '
  x = gets.chomp.to_i
  x = x -1
  puts 'Digite a cordenada y: '
  y = gets.chomp.to_i
  y = y - 1
  if mapaNavios[x][y] != 0
    if mapaTiro[x][y] != "\u{1F4A5}"
      mapaTiro[x][y] = "\u{1F4A5}"
      acertos = acertos + 1
    end
    if acertos == 7
      print_mapa(mapaTiro)
      abort("VOCE GANHOU")
    end
  else
    mapaTiro[x][y] = "\u{1F4A7}"
  end
  print_mapa(mapaTiro)
end

puts "GAME OVER"
puts "\u{1F419}"
