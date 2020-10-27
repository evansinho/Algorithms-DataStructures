def depth_first_search(graph)
  arr = []
  stack = [0]

  while arr.length < graph.keys.length
    val = stack.pop

    graph[val].reverse.each do |el|
      stack.push(el) unless arr.include? el
    end

    arr.push(val) unless arr.include? val
  end

  arr
end