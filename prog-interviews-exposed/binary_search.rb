
def binary_search(array, target)
  return false if array.length == 0
  return target if array[0] == target
  
  mid = array.length/2
  left = array.take(mid)
  right = array.drop(mid)
  
  if target > mid
    binary_search(right, target)
  elsif target < mid
    binary_search(left, target)
  else
    return mid
  end
end

array = [1,2,3,4,5,6,7,8,9]
target = 5
puts binary_search(array, target)
