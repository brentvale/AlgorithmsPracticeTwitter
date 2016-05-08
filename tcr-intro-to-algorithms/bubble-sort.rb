

def bubble_sort(array)
 
  array.each_index do |idx|
    
    sorted = true
    
    array[(idx+1)..-1].each_index do |jdx|
      if array[jdx] > array[jdx + 1]
  
        array[jdx + 1], array[jdx] = array[jdx], array[jdx + 1]

        sorted = false
      end
      print array
      puts "*******"
    end
    
    if sorted == true
      return array 
    end
  end
  
end


array = [3, 5, 2, 1, 6, 7, 9, 4, 8]
puts bubble_sort(array)