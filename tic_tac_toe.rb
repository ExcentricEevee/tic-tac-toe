require_relative "lib/player"
require_relative "lib/board"
require_relative "lib/game"

# Set up two players
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

game = Game.new(player_x, player_o)
p game
