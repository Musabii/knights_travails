# frozen_string_literal: true

require_relative 'chessboard'
require_relative 'knight'

my_knight = Knight.new([3, 3])
my_board = Chessboard.new

target = [4, 3]

print my_board.shortest_trail(my_knight, target)
