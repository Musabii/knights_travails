# frozen_string_literal: true

# Node Class
class Node
  attr_reader :value, :adjacent_nodes

  def initialize(value)
    @value = value
    @adjacent_nodes = []
  end

  def add_adjacent(adjacent_nodes)
    @adjacent_nodes << adjacent_nodes
  end
end
