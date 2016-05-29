require_relative "tree"

class PreorderTree < Tree
  
  def create_nodes(num)
    queue = []
    
    child_one, child_two = Node.new({parent: @head, level: 1, value: 1}), Node.new({parent: @head, level: 1, value: 2})
    @head.add_child(child_one)
    @head.add_child(child_two)
    
    queue << child_one
    queue << child_two
    num -= 2
    value = 3
    
    while num > 0 
      next_node = queue.shift()
      child_one, child_two = Node.new({parent: next_node, level: (next_node.level + 1), value: value}), Node.new({parent: next_node, level: (next_node.level + 1), value: value + 1})
      value += 2
      
      next_node.add_child(child_one)
      next_node.add_child(child_two)
      
      queue << child_one
      queue << child_two
      num -= 2
    end
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
        print node.value
      end
      puts "**********"
    end
  end
  
end

def preorder_traversal(node)
  return if node.nil?
  
  puts node.value
  
  preorder_traversal( node.children[0])
  preorder_traversal( node.children[1])
end

a = PreorderTree.new(20)

head = a.head

# a.display
preorder_traversal(head)
