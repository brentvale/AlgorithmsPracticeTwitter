#think reording a hand of cards from left to right
#sort in place

def insert_sort(array)
  array.each_index do |idx|
    key = array[idx]
    i = idx - 1
    while (i > -1 && array[i] > key) do
      array[i+1] = array[i]
      i = i - 1
    end
    array[i+1] = key
  end
  puts array
end

array = [9,2,4,7,1,8,12,19,6]
insert_sort(array)