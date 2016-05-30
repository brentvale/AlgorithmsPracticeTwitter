def combs(input, output)
  
  (0...input.length).step(1).each do |idx|
    
    input_start = input[idx]
  
    output += input_start
  
    puts output
    
    if idx < (input.length - 1)
      combs(input[idx+1..-1], output)
    end
    
    output = output[0..-2]

  end
  
  
end

start = "wxyz"

combs(start, "")