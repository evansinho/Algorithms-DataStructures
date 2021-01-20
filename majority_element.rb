# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  no_of_times = nums.length/2.to_i
  hash = Hash.new(0)
  nums.each { |num| hash[num] += 1 }
  hash.each { |key, val| return key if val > no_of_times }
end
