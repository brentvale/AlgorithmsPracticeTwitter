class Tree
  def initialize
    @head = Node.new({head: true})
    create_nodes(20)
    @node_array = []
  end
  
  def display
    bfs_all_nodes(@head)
    @node_array.each_with_index do |node, idx|
      puts "#{node} : ##{idx}"
    end
  end

  def bfs_all_nodes(node)
    @node_array << node
    
    return if node.children.length == 0 
    
    node.children.each do |child|
      bfs_all_nodes(child)
    end
  end
  
  def create_nodes(num)
    queue = []
    
    child_one, child_two = Node.new({parent: @head}), Node.new({parent: @head})
    @head.add_child(child_one)
    @head.add_child(child_two)
    
    queue << child_one
    queue << child_two
    num -= 2
    
    
    while num > 0 
      next_node = queue.shift()
      child_one, child_two = Node.new({parent: next_node}), Node.new({parent: next_node})
      
      next_node.add_child(child_one)
      next_node.add_child(child_two)
      
      queue << child_one
      queue << child_two
      num -= 2
    end
  end
end


class Node
  def initialize(options)
    @head = options[:head] || false
    @parent = options[:parent] || nil
    @children = []
  end
  
  def add_child(child)
    @children << child
  end
  
  def children
    @children
  end
end

a = Tree.new()
a.display



