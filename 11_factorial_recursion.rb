def factorial n
  return 1 if (n == 0 || n == 1)
  puts caller
  n * factorial(n - 1)
end

value = factorial 5
puts value
