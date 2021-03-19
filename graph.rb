# frozen_string_literal: true

# Graph class
class Graph
  def initialize
    @nodes = {}
  end

  def add_node(node)
    @nodes[node.value] = node
  end

  def add_edge(node1, node2)
    @nodes[node1].add_edge(@nodes[node2])
  end

  def [](name)
    @nodes[name]
  end
end
