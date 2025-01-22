# Class that tracks the state of the game area;
# what symbols are placed in it, win condition checking, etc
class Board
  attr_accessor :squares

  def initialize
    # 3 arrays of size-3? 1 array of size-9?
    @squares = Array.new(9, " ")
  end

  def show
    puts <<-HEREDOC

     #{squares[0]} | #{squares[1]} | #{squares[2]}
    ---+---+---
     #{squares[3]} | #{squares[4]} | #{squares[5]}
    ---+---+---
     #{squares[6]} | #{squares[7]} | #{squares[8]}

    HEREDOC
  end
end
