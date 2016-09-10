def merge_sort(array)
  #base case
  return array if array.length == 0
  return array if array.length == 1
  
  mid = array.length / 2
  left = array.take(mid)
  right = array.drop(mid)
  
  merge(merge_sort(left), merge_sort(right))
  
end

def merge(left, right)
  sorted = []
  #remember each of these arrays is sorted, we are combing two sorted arrays in this step
  until left.empty? || right.empty?
    if left.first < right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  
  sorted.concat(left).concat(right)
  
end

array = [8, 7, 6, 5, 4, 3, 2, 1]
puts merge_sort(array)