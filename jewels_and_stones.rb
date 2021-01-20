# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
  arr = []
  stones = stones.split('')
  stones.each do |stone|
    arr << stone if jewels.include?(stone)
  end
  arr.length
end
