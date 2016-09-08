#take first element in array, search through rest of array, to find the smallest value, swap values


def selection_sort(array, start)
  
  return array if start == array.length
  
  if start < array.length
    
    smallest_idx = smallest_index(array, start)
   
    unless start == smallest_idx
      array[start], array[smallest_idx] = array[smallest_idx], array[start]
    end
    
    selection_sort(array, (start+1))
  end
  
end

def smallest_index(array, index)

  smallest_idx = 0
  
  temp = array[index..-1]
  
  temp.each_index do |idx|
    if temp[idx] < temp[smallest_idx] 
      smallest_idx = idx
    end
  end
  
  return smallest_idx + index 
end

array = [9, 4, 6, 5, 7, 3, 2, 1, 8, 12, 11]
print selection_sort(array, 0)


