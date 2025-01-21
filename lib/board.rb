# Class that tracks the state of the game area;
# what symbols are placed in it, win condition checking, etc
class Board
  attr_accessor :board

  def initialize
    # 3 arrays of size-3? 1 array of size-9?
    @board = Array.new(9, " ")
  end
end
