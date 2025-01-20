require_relative 'lib/player'

def setup_players
  puts 'Who is playing as X?'
  name = gets.chomp
  playerX = Player.new(name, 'X')
  
  puts # for a line break
  
  puts 'Who is playing as O?'
  name = gets.chomp
  playerO = Player.new(name, 'O')
  
  puts
  
  puts "Your players are...
  #{playerX.name} as #{playerX.symbol}
  #{playerO.name} as #{playerO.symbol}"
end
