#solution found : http://stackoverflow.com/questions/5773961/all-possible-permutations-of-a-given-string

def permute(result,input)
  if(input.length == 0)
    return
  end

  if(input.length == 1)
    puts result + input[0]
    return
  end

  if(input.length == 2)
    puts result + input[0] + input[1]
    puts result + input[1] + input[0]
    return
  end

  (0...input.length).to_a.each do |i|
    #original used (0...input.length).step(1).each
    #step(n) iterates over the array n at a time
   
    firstpart = result+input[i]
    secondpart = (i > 0 ? input[0..(i-1)] : '') + (input[(i+1)..-1] || '')
    
    puts "result = #{result}"
    puts "input = #{input}"
    puts " i = #{i}"
    puts " first part = #{firstpart}"
    puts " second part = #{secondpart}"
    puts "***********************"
    
    #permute(result,  input)
    permute(firstpart,secondpart)
  end
end

permute('',"abcd")