# This class keeps track of the game state as a whole without crowding tic_tac_toe.rb
class Game
  attr_reader :board, :player_x, :player_o

  WIN_CONDITIONS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], # rows
                    [1, 4, 7], [2, 5, 8], [3, 6, 9], # columns
                    [1, 5, 9], [3, 5, 7]].freeze # diagonals

  def initialize(player1, player2)
    # Intentionally leaving index 0 blank for convenience
    @board = Array.new(10, " ")
    @player_x = player1
    @player_o = player2
    @current_player = player_x
  end

  def take_turn
    loop do
      player_choice = get_choice
      insert_symbol(player_choice)
      show_board

      if win_condition_reached?
        declare_winner
        break
      elsif tie_reached?
        puts "No one wins!"
        break
      end

      change_current_player
    end
  end

  def show_board
    puts "
     #{board[1]} | #{board[2]} | #{board[3]}
    ---+---+---
     #{board[4]} | #{board[5]} | #{board[6]}
    ---+---+---
     #{board[7]} | #{board[8]} | #{board[9]}
     "
  end

  private

  attr_accessor :current_player

  def get_choice
    loop do
      puts "What's your move? (from 1 to 9)"
      puts "Current Player: #{current_player.name} (#{current_player.symbol})"
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

  def change_current_player
    if current_player == player_x
      self.current_player = player_o
    else
      self.current_player = player_x
    end
  end

  def win_condition_reached?
    WIN_CONDITIONS.each do |condition|
      row_being_checked = [board[condition[0]], board[condition[1]], board[condition[2]]]
      if row_being_checked.uniq.length == 1 && !row_being_checked.include?(" ")
        return true
      end
    end

    false
  end

  def declare_winner
    puts "#{current_player.name} wins the game!"
  end

  def tie_reached?
    board[0] = "" # so our unused square isn't considered in the test
    !board.include?(" ")
  end
end
