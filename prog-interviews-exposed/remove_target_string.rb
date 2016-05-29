#O(n)

def remove_target_string(string, target)
  compare_hash = {}
  target.split("").each do |char|
    compare_hash[char] = true
  end
  
  return_string = ""
  string.split("").each do |char|
    return_string.concat char unless compare_hash[char]
  end
  return return_string
  
end

string = "Battle of the Vowels: Hawaii vs. Grozny"
target = "aeiou"

puts remove_target_string(string, target)