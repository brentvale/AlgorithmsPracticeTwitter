def two_sum(nums, target)
    nums.each_with_index do |first_val, idx|
       (idx+1..nums.length-1).to_a.each do |jdx|
           if first_val + nums[jdx] == target
               return [idx, jdx]
           end
       end
    end
end


array = [3,2,4]
target = 6
puts two_sum(array, target)