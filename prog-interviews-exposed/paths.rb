
#in a grid of 3x3 calculate the total number of paths from top left square to bottom right
def number_of_paths(m, n)
  if m == 1 || n == 1
    return 1
  end
  
  return number_of_paths(m-1, n) + number_of_paths(m, n-1)
end

puts number_of_paths(3,3)