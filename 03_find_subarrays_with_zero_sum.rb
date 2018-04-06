require 'pry'

def findSubArraysWithZeroSum array, sum
  counterHash = {}
  current_sum = 0
  fl = false
  array.each_with_index do |item, index|
    current_sum += item
    if current_sum == sum
      fl = true
      puts "Sum found between indexes 0 and #{index}"
    end
    if counterHash.key? (current_sum - sum)
      fl = true
      puts "Sum found between indexes #{counterHash[current_sum - sum] + 1} and #{index}"
    end
    counterHash[current_sum] = index
  end
  if !fl
    puts "No subarray exists with given sum"
  end
end

findSubArraysWithZeroSum [3, 4, -7, 3, 1, 3, 1, -4, -2, -2], 0
