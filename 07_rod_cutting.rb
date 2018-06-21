require 'pry'

def cutOptimalRoad prices, length
  return 0 if length == 0
  minVal = 0
  [prices[length], cutOptimalRoad(prices, length - 2) + prices[length - 1]]
end

# def cutOptimalRoad prices, length
#   val = []
#   val[0] = 0
#   (1..length).each do |i|
#     max_val = 0
#     (1..(i - 1)).each do |j|
#       max_val = [max_val, prices[j] + val[i - j - 1]].max
#       puts max_val
#     end
#     val[i] = max_val
#   end
#   return val[length]
# end

prices = [3, 2, 4]
value = cutOptimalRoad prices, prices.length
puts value
