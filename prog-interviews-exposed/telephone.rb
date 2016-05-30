def tel_words(telephone_number, current_digit, output)

  if current_digit == telephone_number.length
    puts output
    return
  else
   
    # telephone_number.each do |num|
    #   puts "num = #{num}"
      
      (1..3).to_a.each do |idx|
        num = telephone_number[current_digit]
        
        output = output + telephone_conversion(num, idx)
       
        tel_words(telephone_number, (current_digit + 1), output)
        
        output = output[0..-2]
      end
      
    # end
  end
end

def telephone_conversion(number, target)
  #target = 1,2,3
  hash = {
    1 => {1 => "", 2 => "", 3 => ""},
    2 => {1 => "a", 2 => "b", 3 => "c"},
    3 => {1 => "d", 2 => "e", 3 => "f"},
    4 => {1 => "g", 2 => "h", 3 => "i"},
    5 => {1 => "j", 2 => "k", 3 => "l"},
    6 => {1 => "m", 2 => "n", 3 => "o"},
    7 => {1 => "p", 2 => "q", 3 => "r"},
    8 => {1 => "t", 2 => "u", 3 => "v"},
    9 => {1 => "w", 2 => "x", 3 => "y"}
  }
  return hash[number.to_i][target.to_i]
end



tel = 7992378.to_s.split("")
# tel = 867.to_s.split("")
tel_words(tel, 0, "")
#=> tmp
#=> tmq
#=> tmr
#=> tnp
#=> tnq
#=> tnr
#=> top
#=> toq
#=> tor

#=> ump
#=> umq
#=> umr
#=> unp
#=> unq
#=> unr
#=> uop
#=> uoq
#=> uor

#=> vmp
#=> vmq
#=> vmr
#=> vnp
#=> vnq
#=> vnr
#=> vop
#=> voq
#=> vor


