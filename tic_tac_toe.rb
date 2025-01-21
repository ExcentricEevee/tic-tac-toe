require_relative "lib/player"

def setup_players
  puts "Who is playing as X?"
  name = gets.chomp
  player_x = Player.new(name, "X")

  puts # for a line break

  puts "Who is playing as O?"
  name = gets.chomp
  player_o = Player.new(name, "O")

  puts

  puts "Your players are...
  #{player_x.name} as #{player_x.symbol}
  #{player_o.name} as #{player_o.symbol}"
end
