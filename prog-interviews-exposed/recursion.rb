def fib_nums(number)
  return [0] if number == 0
  return [0, 1] if number == 1
  
  temp = fib_nums(number - 1)
  temp << (temp[-1] + temp[-2])
end

#write frist n fibonacci numbers
print fib_nums(10)
#=> 0, 1, 1, 2, 3, 5, 8, 13, 21, 34


def factorial(n)
  return 1 if n == 1
  
  n * factorial(n-1)
end

puts factorial(7)

#=> 6*5 = 30 * 4 = 120 * 3 = 360 * 2 = 720 