#You have an array of integers and you want to find the largest contiguous (together in sequence) sub-sum. Find the sums of all contiguous sub-arrays and return the max.

#Example:

#list = [5, 3, -7]
#largest_contiguous_subsum(list) # => 8

# possible sub-sums
  # [5]           # => 5
#   [5, 3]        # => 8 # we want this one
#   [5, 3, -7]    # => 1
#   [3]           # => 3
#   [3, -7]       # => -4
#   [-7]          # => -7
# Example 2:
#
#   list = [2, 3, -6, 7, -6, 7]
#   largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

#what's the length of a FINAL array made up of all the sub arrays from an array of length n? -> n^2?
#time complexity => O(n^2 + n^2) => O(2n^2) 
def largest_continugous(list)
  sub_arrays = []
  list.each_with_index do |el, idx|
    list[(idx)..-1].each_with_index do |second_el, jdx|
      sub_arrays << list[idx..(idx + jdx)]
    end
  end
  max = sub_arrays[0].inject(:+)
 print sub_arrays
  sub_arrays.each do |sub_array|
    value = sub_array.inject(:+)
    if value > max
      max = value
    end
  end
  puts max
end

# list = [2, 3, -6, 7, -6, 7]
# # list = [5, 3, -7]
# largest_continugous(list)


#how to get O(n) time? and 0(1) space complexity
#this is still just O(n^2)
def largest_continugous_second(list)
  max = list[0]
  list.each_with_index do |el, idx|
    list[(idx)..-1].each_with_index do |second_el, jdx|
      value = list[idx..idx + jdx].inject(:+)
      if value > max
        max = value
      end
    end
  end
  puts "largest continugous with O(n) time is:"
  puts max
end

# list_two = [2, 3, -6, 7, -6, 7]
# # list_two = [5, 3, -7]
# largest_continugous_second(list_two)




##SOLUTION
#crazy...and it works
def largest_contiguous_subsum2(array)
  largest = 0
  current = 0

  array.each do |el|
    puts "el = #{el}"
    current += el
    puts "current = #{current}"
    largest = current if current > largest
    puts "larget = #{largest}"
    current = 0 if current < 0
    puts "current = #{current}"
    puts "*********************"
    puts "*********************"
  end

  largest
end

list_three = [2, 3, -6, 7, -6, 7]
# list_two = [5, 3, -7]
puts largest_contiguous_subsum2(list_three)