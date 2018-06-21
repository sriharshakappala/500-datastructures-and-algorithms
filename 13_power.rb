# n to the power of x

def power n, x
  return 1 if x == 0
  return n if x == 1
  return n * power(n, x-1)
end

val = power 10, 1203
puts val
