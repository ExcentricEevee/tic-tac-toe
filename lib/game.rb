# This class keeps track of the game state as a whole without crowding tic_tac_toe.rb
class Game
  attr_reader :board, :player_x, :player_o, :current_player

  def initialize(player1, player2)
    @board = Array.new(9, " ")
    @player_x = player1
    @player_o = player2
    @current_player = player_x
  end

  def get_choice
    loop do
      puts "What's your move? (from 1 to 9)"
      response = gets.chomp.to_i
      # This even catches non-integer input already
      if response < 1 || response > 9
        puts "Please enter a number between 1 and 9\n\n"
      elsif board[response] != " "
        puts "This square is already taken.\n\n"
      else
        return response
      end
    end
  end

  def insert_symbol(idx)
    board[idx] = current_player.symbol
  end

  def show_board
    puts "
     #{board[0]} | #{board[1]} | #{board[2]}
    ---+---+---
     #{board[3]} | #{board[4]} | #{board[5]}
    ---+---+---
     #{board[6]} | #{board[7]} | #{board[8]}
     "
  end
end
