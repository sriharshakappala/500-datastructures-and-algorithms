require 'pry'

def longestIncreasingSubsequence arr
  subsequence = []
  arr.each do |i|
    if i > arr.last.to_i
      subsequence << i
    else
      arr.each_with_index do |j, index|
      end
    end
  end
end



longestIncreasingSubsequence [2, 6, 3, 4, 1, 2, 9, 5, 8]