# Class designed to maintain state of each player such as their play symbols and current score.
class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
end
