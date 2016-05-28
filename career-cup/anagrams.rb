# find the anagrams from a list of strings
#Input: ["tea", "ate", "eat", "apple", "java", "vaja", "cut", "utc"]
#Output: ["tea", "ate", "eat", "java", "vaja", "cut", "utc"]

#about anagrams: they must be same length

#n^2 time worst case (when there are no anagrams)
#2n space complexity worst case list=n anagrams=n
def anagrams(list)
  anagrams = []
  comparisons = 0
  
  list.each_index do |idx|
    
    list.each_index do |jdx|
      next if idx == jdx
      comparisons += 1
      if list[idx].split("").sort() == list[jdx].split("").sort()
        anagrams << list[idx]
        break
      end
    end
  end
  puts comparisons # 34 comparisons by breaking, 56 comparisons without breaking
  anagrams
end

array = ["tea", "ate", "eat", "apple", "java", "vaja", "cut", "utc"]
puts anagrams(array)