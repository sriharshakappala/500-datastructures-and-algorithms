numOfTestCases = gets.chomp.to_i
numWalls = []
wallHeights = []

numOfTestCases.times do |i|
  walls = gets.chomp.to_i
  heights = gets.chomp
  numWalls << walls
  wallHeights << heights.split(' ').map!(&:to_i)
end

numOfTestCases.times do |i|
  maxArray = []
  walls = numWalls[i]
  heights = wallHeights[i]
  heights.each_with_index do |a, i|
    heights.each_with_index do |b, j|
      next if [0, 1].include? (j - i)
      width = j - i - 1
      minwall = [a, b].min
      maxArray << width * minwall
    end
  end
  puts maxArray.max
end
