require 'pry'

def getMinimumClicks channelsLimit, blockedChannels, channelViewSequence
  lowestChannel = channelsLimit.split[0].to_i
  highestChannel = channelsLimit.split[1].to_i
  blockedChannels = [] if blockedChannels.split.count == 0
  blockedChannels = blockedChannels.split[1..-1].map(&:to_i)
  channelViewSequence = channelViewSequence.split[1..-1].map(&:to_i)
  accessibleChannels = (lowestChannel..highestChannel).to_a - blockedChannels
  prevChannel = lowestChannel
  backChannel = 0
  clicks = 0
  channelViewSequence.each_with_index do |channel, index|
    if index == 0
      clicks += channel.to_s.length
      prevChannel = channel
      backChannel = channelViewSequence[index - 2]
      next
    end
    down_cost = down prevChannel, channel, accessibleChannels
    up_cost = up prevChannel, channel, accessibleChannels
    backChannel = channelViewSequence[index - 2]
    back_cost = can_go_back? channel, backChannel
    change_cost = channel.to_s.length
    clicks += [down_cost, up_cost, back_cost, change_cost].min
    prevChannel = channel
  end
  return clicks
end

def up source, destination, accessibleChannels
  return 1 if accessibleChannels[-1] == source && accessibleChannels[0] == destination
  source_index = accessibleChannels.index source
  destination_index = accessibleChannels.index destination
  cost = destination_index - source_index
  if cost < 0
    return accessibleChannels.count + cost
  else
    return cost
  end
end

def down source, destination, accessibleChannels
  return 1 if accessibleChannels[0] == source && accessibleChannels[-1] == destination
  source_index = accessibleChannels.index source
  destination_index = accessibleChannels.index destination
  cost = source_index - destination_index
  if cost < 0
    return accessibleChannels.count + cost
  else
    return cost
  end
end

def can_go_back? source, destination
  if source == destination
    return 1
  else
    # Highest possible cost to ignore as we cannot go back
    return 100000
  end
end

channelsLimit = gets.chomp
blockedChannels = gets.chomp
channelViewSequence = gets.chomp

clicks = getMinimumClicks channelsLimit, blockedChannels, channelViewSequence
puts clicks

# 1 20
# 2 18 19
# 5 15 14 17 1 17
#
# 103 108
# 1 104
# 5 105 106 107 103 105
#
# 1 100
# 4 78 79 80 3
# 8 10 13 13 100 99 98 77 81
#
# 1 200
# 0
# 4 1 100 1 101
