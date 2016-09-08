def merge_sort(array)
  #think about the base case!
  return array if array.length == 0 
  return array if array.length == 1
  
  mid = array.length / 2
  
  left = array.take(mid)
  right = array.drop(mid)
  
  merge(merge_sort(left), merge_sort(right))
  
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first > right.first
      sorted << right.shift
    else
      sorted << left.shift
    end
  end
  
  
  sorted << left
  sorted << right
  sorted.flatten

end




array = [9, 3, 4, 5, 6, 8, 2, 1, 7]

puts merge_sort(array)