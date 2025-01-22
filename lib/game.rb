# This class keeps track of the game state as a whole without crowding tic_tac_toe.rb
class Game
  attr_reader :player_x, :player_o

  def initialize(player1, player2)
    @board = Board.new
    @player_x = player1
    @player_o = player2
    @current_player = player_x
  end
end
