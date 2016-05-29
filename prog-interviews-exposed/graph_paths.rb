# how to move through a graph and return a list of all possible paths from top 
# left to bottom right where you can only move down and right


#INCOMPLETE

def display(graph)
  graph.each_index do |idx|
    graph.each_index do |jdx|
      print "#{idx} : #{jdx}  "
    end
    puts " "
    puts "***********************************************"
  end
end

class Node
  def initialize(options)
    @type = options[:type] || "none"
    @x = options[:x]
    @y = options[:y]
  end
  
  def type
    @type
  end
  
  def x
    @x
  end
  
  def y
    @y
  end
  
  def right=(node)
    @right = node
  end
  
  def left=(node)
    @left = node
  end
  
  def right
    @right
  end
  
  def left 
    @left
  end
end

# @@all_paths = []
# @@STACK = []

def explore(node)
  return if node.nil?
  
  if node.type == "end"
    # @@all_paths << @@STACK
  end
  debugger
  right_node = node.right
  down_node = node.down
  
  explore(right_node)
  explore(down_node)
end

def assign_children(grid)
  grid.each_index do |idx|
    grid.each_index do |jdx|
      unless grid[idx][jdx + 1].nil?
        grid[idx][jdx].right = grid[idx][jdx + 1]
      end
      
      unless grid[idx + 1][jdx]
        grid[idx][jdx].down = grid[idx + 1][jdx]
      end
    end
  end
end

def create_nodes(graph)
  graph.each_index do |idx|
    graph.each_index do |jdx|
      if idx == 0 && jdx == 0
        Node.new({x: jdx, y: idx, type: "start"})
      elsif (idx == graph.length - 1) && (jdx == graph.length - 1)
        Node.new({x: jdx, y: idx, type: "end"})
      end
      graph[idx][jdx] = Node.new({x: jdx, y: idx})
    end
  end
  return graph
end

arrays = Array.new(4) {Array.new(4)}
grid = create_nodes(arrays)
assign_children(grid)

explore(grid)
# puts @@STACK

