#[3, 5, 2, 1, 6, 7, 9, 4]
#=>
#[3, 5, 2, 1] [6, 7, 9, 4]
#=>
#[3, 5] [2, 1] [6, 7] [9, 4]
#=>
#[3] [5] [2] [1] [6] [7] [9] [4]
#=>
#[3, 5] [1, 2] [6, 7] [4, 9]
#=>
#[1, 2, 3, 5] [4, 6, 7, 9]
#=>
#[1, 2, 3, 4, 5, 6, 7, 9]


#average_time = O(nlg(n))
def merge_sort(array)
  if array.length < 2
    return array
  end
  
  mid = array.length/2
  left = array[0..(mid - 1)]
  right = array[mid..-1]
  
  merge(merge_sort(left), merge_sort(right))
  
end


def merge(left_side, right_side)
  sorted = []
  until left_side.empty? || right_side.empty?
    if left_side.first < right_side.first
      sorted << left_side.shift
    elsif left_side.first > right_side.first
      sorted << right_side.shift
    else
      #two sides are equal
      sorted << left_side
      sorted << right_side
    end
  end
  return sorted.concat(left_side).concat(right_side)
  
end

arrayTwo = [5, 3]

array = [3, 5, 2, 1, 6, 7, 9, 4, 8]

puts merge_sort(array)