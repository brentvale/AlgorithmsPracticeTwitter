#O(n) with overhead of creating new array
def reverse_words(string)
  return_array = []
  string.split(" ").each do |word|
    return_array.unshift(word)
  end
  return_array.join(" ")
end


string = "Do or do not, there is no try."
print reverse_words(string)
expected = "try. no is there not, do or Do"

