require 'pry'

def findLongestPalindrome str
  len = str.length
  boolTable =  Array.new(len){Array.new(len)}
  maxLen = 1
  palindromeBeginsAt = 0
  len.times do |i|
    boolTable[i][i] = true
  end
  (len-1).times do |i|
    if str[i] == str[i+1]
      boolTable[i][i+1] = true
      palindromeBeginsAt = i
      maxLen = 2
    end
  end
  (3..len).each do |curLen|
    (0..(len - curLen + 1)).each do |i|
      j = i + curLen - 1
      if ((str[i] == str[j]) && boolTable[i+1][j-1])
        boolTable[i][j] = true
        palindromeBeginsAt = i
        maxLen = curLen
      end
    end
  end
  if len % 2 == 0
    palindrome = str[palindromeBeginsAt..(maxLen)]
  else
    palindrome = str[palindromeBeginsAt..(maxLen+1)]
  end
  puts "Length of palindrome - #{maxLen}, Palindrome begins at index - #{palindromeBeginsAt}, Longest Palindrome - #{palindrome}"
end

findLongestPalindrome 'abcdcbgh'
findLongestPalindrome 'bananas'
