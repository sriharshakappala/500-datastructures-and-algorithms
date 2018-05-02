def addPrev arr, n
  return if n <= 1
  addPrev arr, n-1
  arr[n-1] += arr[n-2]
end

arr = [1, 2, 3, 4, 5]
puts arr.to_s
addPrev arr, 5
puts arr.to_s
