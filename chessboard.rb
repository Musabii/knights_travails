# frozen_string_literal: true

require_relative 'node'
require_relative 'graph'

# Chessboard class
class Chessboard
  attr_reader :board

  def initialize
    @board = (0..7).to_a.repeated_permutation(2).to_a
  end

  def possible_paths_graph(piece)
    graph = Graph.new
    @board.each do |val|
      node = Node.new(val)
      graph.add_node(node)
      piece.next_moves(node.value[0], node.value[1]).each do |move|
        node.add_adjacent(move) if @board.include?(move)
      end
    end
    graph
  end

  def shortest_trail(piece, destination)
    graph = possible_paths_graph(piece)
    visited = [], to_visit = [], prev = []
    visited << graph[piece.position]
    to_visit << graph[piece.position]

    until to_visit.empty?
      temp = to_visit.shift

      return traverse_prev(prev, piece.position, destination) if temp.value == destination
      temp.adjacent_nodes.each do |move|
        unless visited[@board.index(move)]
          visited[@board.index(move)]
          to_visit << graph[move]
          prev[@board.index(move)] = temp.value
        end
      end
    end
  end

  def traverse_prev(prev, s, e)
    path = []
    until path[0] == s
      path << e
      return path.reverse() if path[-1] == s
      e = prev[@board.index(e)]
    end
  end
end
