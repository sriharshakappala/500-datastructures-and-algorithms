require 'pry'

def zeroSubArray array, sum
  counterHash = {}
  current_sum = 0
  array.each_with_index do |item, index|
    current_sum += item
    if current_sum == sum
      puts "Sum found between indexes 0 and #{index}"
      return true
    end
    if counterHash.key? (current_sum - sum)
      puts "Sum found between indexes #{counterHash[current_sum - sum] + 1} and #{index}"
      return true
    end
    counterHash[current_sum] = index
  end
  puts "No subarray exists with given sum"
  return false
end

zeroSubArray [3, 4, -7, 3, 1, 3, 1, -4, -2, -2], 0
