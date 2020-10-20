def move(starting, goal)
  intermediate = ([1, 2, 3] - [starting, goal]).first
  # Step 1: move the top disk onto the intermediate peg
  result = move_text(starting, intermediate) + " "
  # Step 2: move the largest disk onto the goal peg
  result += move_text(starting, goal) + " "
  # Step 3: move the intermediate disk onto the goal peg
  result+= move_text(intermediate, goal)
  result
end

# helper function that returns the move in a string format
def move_text(from, to)
"#{from}->#{to}"
end
