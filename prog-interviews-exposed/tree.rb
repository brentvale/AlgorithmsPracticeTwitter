require_relative "node"

class Tree
  def initialize(nodes)
    @head = Node.new({head: true, level: 0})
    create_nodes(nodes)
    @node_array = []
  end
  
  def head 
    @head
  end
  
  def max_tree_height(node)
    return 0 if node.nil?
    #able to use first ('left') and last ('right') because 
    return 1 +  [max_tree_height(node.children.first), 
                 max_tree_height(node.children.last)].max
  end
  
  def display
    bfs_all_nodes(@head)
    hash = {0 => [], 1 => [], 2 => [], 3 => [], 4 => [], 5 => [], 6 => [], 7 => [], 8 => [], 9 => []}
    @node_array.each do |node|
      hash[node.level] << node
    end
    hash.each do |key, value|
      puts "**********"
      puts "level #{key}"
      hash[key].each do |node|
        print node
      end
      puts "**********"
    end
  end

  def bfs_all_nodes(node)
    @node_array << node
    
    return if node.children.length == 0 
    
    # puts "   #{node}"
#     puts node.children
#     puts "********"
    
    node.children.each do |child|
      bfs_all_nodes(child)
    end
  end
  
  def create_nodes(num)
    queue = []
    
    child_one, child_two = Node.new({parent: @head, level: 1}), Node.new({parent: @head, level: 1})
    @head.add_child(child_one)
    @head.add_child(child_two)
    
    queue << child_one
    queue << child_two
    num -= 2
    
    
    while num > 0 
      next_node = queue.shift()
      child_one, child_two = Node.new({parent: next_node, level: (next_node.level + 1)}), Node.new({parent: next_node, level: (next_node.level + 1)})
      
      next_node.add_child(child_one)
      next_node.add_child(child_two)
      
      queue << child_one
      queue << child_two
      num -= 2
    end
  end
end