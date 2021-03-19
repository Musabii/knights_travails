# frozen_string_literal: true

# Knight class
class Knight
  attr_reader :position

  def initialize(knight)
    @position = knight
  end

  def next_moves(row, col)
    x = [row + 2, row - 2, row + 1, row - 1]
    y = [col + 1, col - 1, col + 2, col - 2]
    x[0..1].product(y[0..1]) + x[2..3].product(y[2..3])
  end
end
