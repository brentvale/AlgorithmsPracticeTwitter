#O(n^2)
def first_no_repeat(string)
  array = string.split("")
  #array = ['h','e','l','l','o']
  
  array.each_index do |idx|
    duplicate = false
    array.each_index do |jdx|
      next if idx == jdx
      if array[jdx] == array[idx]
        duplicate = true
        break;
      end
    end
    
    next if duplicate
    return array[idx] 
  end
end


string = "hello o e h b rrttyyllaa"
puts first_no_repeat(string)

#2N -> O(n)
def first_no_repeat_better(string)
  array = string.split("")
  #array = ['h','e','l','l','o']
  hash = {}
  
  array.each do |el|
    if hash[el].nil?
      hash[el] = 1
    else
      hash[el] += 1
    end
  end
  
  array.each do |element|
    if hash[element] == 1
      return element
    end
  end
  return "none"
end

puts first_no_repeat_better(string)


