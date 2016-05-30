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

# def selection_sort(array)
#   puts "array is #{array}"
#   array.each_index do |idx|
#     current_index = idx
#     target_jdx = -1
#     puts "*******"
#     puts "array[idx+1..-1] = #{array[idx+1..-1]}"
#
#     temp = array[idx+1..-1]
#     temp.each_index do |jdx|
#
#       if temp[jdx] < array[current_index]
#         target_jdx = jdx + idx
#       end
#     end
#
#     unless target_jdx == -1
#       array[idx], array[target_jdx] = array[target_jdx], array[idx]
#     end
#
#   end
#   return array
# end
#
# arrayOne = [3, 2, 1]
# print selection_sort(arrayOne)
#
# array = [9, 4, 6, 5, 7, 3, 2, 1, 8, 12, 11]
# print selection_sort(array)
