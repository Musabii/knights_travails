# frozen_string_literal: true

require_relative 'chessboard'
require_relative 'knight'

my_knight = Knight.new([3, 3])
my_board = Chessboard.new

target = [4, 3]

p my_board.knight_moves(my_knight, target)
