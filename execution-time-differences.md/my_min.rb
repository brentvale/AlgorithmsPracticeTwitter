#Given a list of integers find the smallest number in the list.

#Example:
#list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#my_min(list)  # =>  -5
#First, write a function that compares each element to every other element of the list. Return the element if all other elements in the array are larger.

#time complexity => O(n^2)
#best case => O(n) (if first element is smallest)
#average => O(n^2 / 2)
#worst => O(n^2) (if last element is smallest)
def my_min(list)
  list.each do |el|
    smallest = true
    list.each do |second_el|
      if second_el < el
        smallest = false
      end
    end
    if smallest == true
      return el
    end
  end
end


#Now rewrite the function to iterate through the list just once while keeping track of the minimum.

#time complexity => O(n)
#best case => O(n)
#worst => O(n2)
def my_second_min(list)
  smallest = list[0]
  list.each do |el|
    next if el == smallest
    if el < smallest
      smallest = el
    end
  end
  return smallest
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

puts my_min(list)
puts my_second_min(list)
