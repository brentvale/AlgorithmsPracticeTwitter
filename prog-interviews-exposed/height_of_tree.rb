require_relative "tree"

a = Tree.new(100)

a.display

head = a.head

puts a.max_tree_height(head)


