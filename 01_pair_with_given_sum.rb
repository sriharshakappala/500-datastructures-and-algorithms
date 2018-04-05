require 'pry'

def findPair array, sum
  counterHash = {}
  array.each_with_index do |item, index|
    if counterHash.key? (sum - item)
      puts "Pair found at #{counterHash[sum - item]} and #{index}"
      return
    end
    counterHash[item] = index
  end
end

findPair [8, 7, 2, 5, 3, 1], 4
