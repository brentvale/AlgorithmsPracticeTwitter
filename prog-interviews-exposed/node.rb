class Node
  def initialize(options)
    @head = options[:head] || false
    @parent = options[:parent] || nil
    @children = []
    @level = options[:level]
    @value = options[:value]
  end
  
  def add_child(child)
    @children << child
  end
  
  def children
    @children
  end
  
  def level 
    @level
  end
  
  def value
    @value
  end
end