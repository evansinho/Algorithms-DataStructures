def exact_sum?(k, coins, i = 0)
  # if current sum equals zero, the current sub-array includes the exact sum!
  return true if k == 0
  # if the current sub-array is empty, or if the current sum less than zero
  # this branch doesn't include the exact sum
  return false if i >= coins.length || k < 0

  exact_sum?(k, coins, i + 1) || exact_sum?(k - coins[i], coins, i + 1)
end
