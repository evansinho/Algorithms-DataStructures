def hanoi_steps(number_of_discs)
  move_disk(number_of_discs, 1, 2, 3)
end

# use helper recursive function for better readability
def move_disk(number_of_discs, start, intermediate, goal)
  # base case:
  # if there's only one disk, just print the move text from start to goal
  if number_of_discs == 1
    puts move_text(start, goal)
    return
  end
  # step 1: move the n-1 disks of the current sub-problem onto the intermediate peg
  # note that, the intermediate peg of the current problem will be the goal peg of the sub-problem
  move_disk(number_of_discs - 1, start, goal, intermediate)
  # step 2: move the n-th disk of the current sub-problem onto the goal peg
  puts move_text(start, goal)
  # step 3: move the n-1 disk from the intermediate peg to the goal peg
  # note that, the intermediate peg of the current problem will be the starting peg of the sub-problem
  move_disk(number_of_discs - 1, intermediate, start, goal)
end

# helper function that returns move in string format
def move_text(from, to)
  "#{from}->#{to}"
end
